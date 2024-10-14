#include <stdio.h>
#include <pthread.h>
#include <sys/time.h>

#define NUM_THREADS 4  // 设置线程数量
long long num_steps = 1000000000;
double step;
double sum = 0.0;  // 全局共享变量 sum
pthread_mutex_t mut;  // 互斥量

// 每个线程的计算函数
void* CalculatePi(void* arg)
{
    int id = *(int*)arg;  // 线程id
    double x, partial_sum = 0.0;
    long long start = id * (num_steps / NUM_THREADS);
    long long end = (id + 1) * (num_steps / NUM_THREADS);

    for (long long i = start; i < end; i++) {
        x = (i + 0.5) * step;
        partial_sum += 4.0 / (1.0 + x * x);  // 计算部分结果
    }

    pthread_mutex_lock(&mut);  // 加锁，保护对共享变量 sum 的访问
    sum += partial_sum;        // 将线程的部分结果加到 sum 中
    pthread_mutex_unlock(&mut);  // 解锁

    return NULL;
}

int main()
{
    pthread_t threads[NUM_THREADS];
    int thread_ids[NUM_THREADS];
    struct timeval TimeStampStart, TimeStampStop;
    double ExeTime;

    // 初始化互斥量
    pthread_mutex_init(&mut, NULL);

    // 计算步长
    step = 1.0 / (double)num_steps;

    // 开始计时
    gettimeofday(&TimeStampStart, NULL);

    // 创建线程
    for (int i = 0; i < NUM_THREADS; i++) {
        thread_ids[i] = i;
        pthread_create(&threads[i], NULL, CalculatePi, &thread_ids[i]);
    }

    // 等待所有线程完成
    for (int i = 0; i < NUM_THREADS; i++) {
        pthread_join(threads[i], NULL);
    }

    // 结束计时
    gettimeofday(&TimeStampStop, NULL);
    ExeTime = (double)(TimeStampStop.tv_sec - TimeStampStart.tv_sec) + (double)(TimeStampStop.tv_usec - TimeStampStart.tv_usec) * 1e-6;

    // 计算最终的 Pi 值
    double pi = sum * step;

    // 销毁互斥量
    pthread_mutex_destroy(&mut);

    // 输出结果
    printf("The value of PI is %15.12f\n", pi);
    printf("The time to calculate PI was %f seconds\n", ExeTime);

    return 0;
}
