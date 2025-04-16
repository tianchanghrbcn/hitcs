#include <stdio.h>
#include <cuda_runtime.h>

#define NUM_THREADS 256
#define N 1000

bool InitCUDA();
void matgen(float* a, int lda, int n);
clock_t matmult(const float* a, int lda, const float* b, int ldb, float* c, int ldc, int n);
void compare_mat(const float* a, int lda, const float* b, int ldb, int n);
clock_t matmultCUDA(const float* a, int lda, const float* b, int ldb, float* c, int ldc, int n);
__global__ static void matMultCUDA(const float* a, size_t lda, const float* b, size_t ldb, float* c, size_t ldc, int n);

int main() {
	float *a, *b, *c, *d;
	if (!InitCUDA()) return 0;
	a = (float*)malloc(sizeof(float) * N * N);
	b = (float*)malloc(sizeof(float) * N * N);
	c = (float*)malloc(sizeof(float) * N * N);
	d = (float*)malloc(sizeof(float) * N * N);
	srand(0);
	matgen(a, N, N);
	matgen(b, N, N);
	clock_t time1 = matmultCUDA(a, N, b, N, c, N, N);
	clock_t time2 = matmult(a, N, b, N, d, N, N);
	compare_mat(c, N, d, N, N);
	double sec1 = (double)time1 / CLOCKS_PER_SEC;
	double sec2 = (double)time2 / CLOCKS_PER_SEC;
	printf("Time used: %.6f seconds(%.2lf GFLOPS) in CUDA,Time used: %.6f seconds(%.2lf GFLOPS) in CPU\n", sec1, 2.0 * N * N * N / (sec1 * 1E9), sec2, 2.0 * N * N * N / (sec2 * 1E9));
	return 0;
}

// Initialize CUDA
bool InitCUDA() {
	int count;
	cudaGetDeviceCount(&count);
	if (count == 0) {
		fprintf(stderr, "There is no device.\n");
		return false;
	}
	int i;
	for (i = 0; i < count; i++) {
		cudaDeviceProp prop;
		if (cudaGetDeviceProperties(&prop, i) == cudaSuccess) {
			if (prop.major >= 1) {
				break;
			}
		}
	}
	if (i == count) {
		fprintf(stderr, "There is no device supporting CUDA 1.x.\n");
		return false;
	}
	cudaSetDevice(i);
	return true;
}

// Generate matrix data
void matgen(float* a, int lda, int n) {
	int i, j;
	for (i = 0; i < n; i++) {
		for (j = 0; j < n; j++) {
			a[i * lda + j] = (float)rand() / RAND_MAX;
		}
	}
}

// CPU version of Matrix Multiplication
clock_t matmult(const float* a, int lda, const float* b, int ldb, float* c, int ldc, int n) {
	clock_t start, end;
	int i, j, k;
	start = clock();
	for (i = 0; i < n; i++) {
		for (j = 0; j < n; j++) {
			double t = 0;
			for (k = 0; k < n; k++) {
				t += a[i * lda + k] * b[k * ldb + j];
			}
			c[i * ldc + j] = t;
		}
	}
	end = clock();
	return end - start;
}

// Compare Matrix A and Matrix B, and get the error value
void compare_mat(const float* a, int lda, const float* b, int ldb, int n) {
	float max_err = 0;
	float average_err = 0;
	int i, j;
	for (i = 0; i < n; i++) {
		for (j = 0; j < n; j++) {
			if (b[i * ldb + j] != 0) {
				float err = fabs((a[i * lda + j] - b[i * ldb + j]) / b[i * ldb + j]);
				if (max_err < err) max_err = err;
				average_err += err;
			}
		}
	}
	printf("Max error: %g Average error: %g\n", max_err, average_err / (n * n));
}

// Prepare for the CUDA version of Matrix Multiplication
clock_t matmultCUDA(const float* a, int lda, const float* b, int ldb, float* c, int ldc, int n) {
	float *ac, *bc, *cc;
	clock_t start, end;
	
	start = clock();

	// Pitch memory for better performance
	size_t pitch_a, pitch_b, pitch_c;
	cudaMallocPitch((void**)&ac, &pitch_a, sizeof(float) * n, n);
	cudaMallocPitch((void**)&bc, &pitch_b, sizeof(float) * n, n);
	cudaMallocPitch((void**)&cc, &pitch_c, sizeof(float) * n, n);

	// Copy the inputs, Matrix A and Matrix B, from host to deivce
	cudaMemcpy2D(ac, pitch_a, a, sizeof(float) * lda, sizeof(float) * n, n, cudaMemcpyHostToDevice);
	cudaMemcpy2D(bc, pitch_b, b, sizeof(float) * ldb, sizeof(float) * n, n, cudaMemcpyHostToDevice);

	//int blocks = (n + NUM_THREADS - 1) / NUM_THREADS;
	matMultCUDA<<<n, NUM_THREADS, sizeof(float) * n>>>(ac, pitch_a / sizeof(float), bc, pitch_b / sizeof(float), cc, pitch_c / sizeof(float), n);

	// Copy the result back from device to host
	cudaMemcpy2D(c, sizeof(float) * ldc, cc, pitch_c, sizeof(float) * n, n, cudaMemcpyDeviceToHost);

	// Free device memory
	cudaFree(ac);
	cudaFree(bc);
	cudaFree(cc);
	end = clock();
	return end - start;
}

// CUDA version of Matrix Multiplication
__global__ static void matMultCUDA(const float* a, size_t lda,const float* b, size_t ldb, float* c, size_t ldc, int n) {
	extern __shared__ float data[];
	const int tid = threadIdx.x;
	const int row = blockIdx.x;
	int i, j;
	// load data from global memory to shared memory
	for (i = tid; i < n; i += blockDim.x) {
		data[i] = a[row * lda + i];
	}
	__syncthreads(); // barrier! make sure all threads are ready to avoid potential data conflict.

	// all threads in a block process one line of output
	for (j = tid; j < n; j += blockDim.x) {
		double y = 0;
		for (i = 0; i < n; i++) {
			y += data[i] * b[i * ldb + j];
		}
		c[row * ldc + j] = y;
	}
}
