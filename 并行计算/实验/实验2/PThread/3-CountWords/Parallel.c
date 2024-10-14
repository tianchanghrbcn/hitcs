#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <stdbool.h>
#include <sys/time.h>

#define MAX_LINE_LENGTH 132  // 每行最大长度

FILE *fd; 
int TotalEvenWords = 0, TotalOddWords = 0, TotalWords = 0;
pthread_mutex_t mut;  // 声明互斥量

char **Lines;  // 用于动态存储文件的每一行内容
int num_lines = 0;  // 总行数
int allocated_lines = 1000;  // 初始分配的行数

// 获取单词和字母数量
int GetWordAndLetterCount(char *Line, int* evenWords, int* oddWords)
{
    int Word_Count = 0, Letter_Count = 0;
    for (int i = 0; i < MAX_LINE_LENGTH; i++)
    {
        if ((Line[i] != ' ') && (Line[i] != 0) && (Line[i] != '\n')) {
            Letter_Count++;
        } else {
            if (Letter_Count % 2) {
                (*oddWords)++;  // 局部增加奇数单词计数
            } else {
                (*evenWords)++;  // 局部增加偶数单词计数
            }
            Word_Count++;
            Letter_Count = 0;
            if (Line[i] == 0) break;
        }
    }
    return Word_Count;
}

// 每个线程处理一部分行
void* ProcessLines(void* arg)
{
    int thread_id = *(int*)arg;
    int local_evenWords = 0;
    int local_oddWords = 0;
    int local_totalWords = 0;
    
    int lines_per_thread = num_lines / 4;  // 假设有4个线程
    int start = thread_id * lines_per_thread;
    int end = (thread_id == 3) ? num_lines : start + lines_per_thread;  // 最后一个线程处理剩余的行

    for (int i = start; i < end; i++) {
        local_totalWords += GetWordAndLetterCount(Lines[i], &local_evenWords, &local_oddWords);
    }

    // 统一加到全局变量中，减少锁的使用次数
    pthread_mutex_lock(&mut);  // 加锁，保护共享变量
    TotalWords += local_totalWords;
    TotalEvenWords += local_evenWords;
    TotalOddWords += local_oddWords;
    pthread_mutex_unlock(&mut);  // 解锁

    return NULL;
}

int main()
{
    // 动态分配内存用于存储行指针
    Lines = (char **)malloc(allocated_lines * sizeof(char *));
    for (int i = 0; i < allocated_lines; i++) {
        Lines[i] = (char *)malloc(MAX_LINE_LENGTH * sizeof(char));
    }

    // 打开文件
    fd = fopen("./InFile1.txt", "r");
    if (fd == NULL) {
        printf("Error: Unable to open file.\n");
        return -1;
    }

    // 初始化互斥量
    pthread_mutex_init(&mut, NULL);

    // 读取文件内容到内存，并动态调整行数大小
    while (fgets(Lines[num_lines], MAX_LINE_LENGTH, fd) != NULL) {
        num_lines++;
        if (num_lines >= allocated_lines) {
            // 动态扩展内存
            allocated_lines *= 2;
            Lines = (char **)realloc(Lines, allocated_lines * sizeof(char *));
            for (int i = num_lines; i < allocated_lines; i++) {
                Lines[i] = (char *)malloc(MAX_LINE_LENGTH * sizeof(char));
            }
        }
    }
    fclose(fd);

    struct timeval TimeStampStart, TimeStampStop;
    double ExeTime;

    // 开始计时
    gettimeofday(&TimeStampStart, NULL);

    // 创建线程
    int num_threads = 4;  // 假设使用4个线程
    pthread_t threads[num_threads];
    int thread_ids[num_threads];

    for (int i = 0; i < num_threads; i++) {
        thread_ids[i] = i;
        pthread_create(&threads[i], NULL, ProcessLines, &thread_ids[i]);
    }

    // 等待所有线程完成
    for (int i = 0; i < num_threads; i++) {
        pthread_join(threads[i], NULL);
    }

    // 结束计时
    gettimeofday(&TimeStampStop, NULL);
    ExeTime = (double)(TimeStampStop.tv_sec - TimeStampStart.tv_sec) + (double)(TimeStampStop.tv_usec - TimeStampStart.tv_usec) * 1e-6;

    // 销毁互斥量
    pthread_mutex_destroy(&mut);

    // 输出结果
    printf("Total Words = %8d\n", TotalWords);
    printf("Total Even Words = %7d\nTotal Odd Words = %7d\n", TotalEvenWords, TotalOddWords);
    printf("The time to read words was %f seconds\n", ExeTime);

    // 释放内存
    for (int i = 0; i < allocated_lines; i++) {
        free(Lines[i]);
    }
    free(Lines);

    return 0;
}
