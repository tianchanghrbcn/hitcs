#include <stdio.h>
#include <sys/time.h>
#include <omp.h>

long long num_steps = 1000000000;  // 计算步数
double step;

int main(int argc, char* argv[])
{
	struct timeval TimeStampStart, TimeStampStop;
	double ExeTime;
	double x, pi, sum = 0.0;
	int i;

	// 计算步长
	step = 1.0 / (double)num_steps;

	// 开始计时
	gettimeofday(&TimeStampStart, NULL);

	// 使用 OpenMP 并行化 for 循环，并通过 reduction 子句累加 sum
#pragma omp parallel for private(x) reduction(+:sum)
	for (i = 0; i < num_steps; i++)
	{
		x = (i + 0.5) * step;
		sum += 4.0 / (1.0 + x * x);  // 每个线程累加部分结果
	}

	// 计算 pi 的最终值
	pi = sum * step;

	// 结束计时
	gettimeofday(&TimeStampStop, NULL);
	ExeTime = (double)(TimeStampStop.tv_sec - TimeStampStart.tv_sec) +
		(double)(TimeStampStop.tv_usec - TimeStampStart.tv_usec) * 1e-6;

	// 输出结果
	printf("The value of PI is %15.12f\n", pi);
	printf("The time to calculate PI was %f seconds\n", ExeTime);

	return 0;
}
