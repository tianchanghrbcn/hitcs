#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>
#include <omp.h>

#define BLOCK_SIZE 500

int main() {
    struct timeval TimeStampStart, TimeStampStop;
    double ExeTime;
    unsigned int iter = 200000000;  // 迭代次数
    int i, j;
    double x, y;
    double dUnderCurve = 0.0;
    double pi = 0.0;

    double r[BLOCK_SIZE * 2];  // 生成随机数的数组

    // 获取开始时间
    gettimeofday(&TimeStampStart, NULL);

    // 并行执行，reduction 用于累加 dUnderCurve
#pragma omp parallel private(i, j, x, y, r) reduction(+:dUnderCurve)
    {
        unsigned int seed = time(NULL) ^ omp_get_thread_num();  // 每个线程独立的随机数种子

        // 生成随机数和计算
#pragma omp for
        for (j = 0; j < iter / BLOCK_SIZE; j++) {
            // 创建随机数，生成 BLOCK_SIZE*2 个在 0.0-1.0 内均匀分布的随机数
            for (i = 0; i < BLOCK_SIZE * 2; i++) {
                r[i] = 0.0 + 1.0 * rand_r(&seed) / RAND_MAX * (1.0 - 0.0);
            }

            // 计算哪些点落在圆内
            for (i = 0; i < BLOCK_SIZE; i++) {
                x = r[i];  // X 坐标
                y = r[i + BLOCK_SIZE];  // Y 坐标
                if (x * x + y * y <= 1.0) {  // 判断点是否落在圆内
                    dUnderCurve++;
                }
            }
        }
    }

    // 计算π的值
    pi = dUnderCurve / (double)iter * 4;

    // 获取结束时间
    gettimeofday(&TimeStampStop, NULL);
    ExeTime = (double)(TimeStampStop.tv_sec - TimeStampStart.tv_sec) +
        (double)(TimeStampStop.tv_usec - TimeStampStart.tv_usec) * 1e-6;

    // 输出结果
    printf("pi = %10.9f\n", pi);
    printf("The time to calculate PI was %f seconds\n", ExeTime);

    return 0;
}
