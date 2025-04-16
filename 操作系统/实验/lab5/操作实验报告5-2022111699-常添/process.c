#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>
#include <sys/times.h>

#define HZ 100

void cpuio_bound(int total_time, int cpu_time, int io_time);

int main(int argc, char *argv[]) {
    pid_t pid1, pid2;
    int exited_pid;

    printf("Parent Process PID = [%d]\n", getpid());

    pid1 = fork();
    if (pid1 == 0) {
        /* First child process */
        printf("[%d] is running now.\n", getpid());
        cpuio_bound(10, 1, 0);
        exit(0);
    }

    pid2 = fork();
    if (pid2 == 0) {
        /* Second child process */
        printf("[%d] is running now.\n", getpid());
        cpuio_bound(10, 1, 0);
        exit(0);
    }

    /* Wait for child processes to exit */
    exited_pid = wait(NULL);
    printf("[%d] has exited.\n", exited_pid);

    exited_pid = wait(NULL);
    printf("[%d] has exited.\n", exited_pid);

    printf("This is Changtian's OS lab.\n");
    return 0;
}

/* 
   Simulates CPU-bound and I/O-bound operations.
  
   @param total_time Total time (in seconds) for the operation.
   @param cpu_time Continuous CPU usage time (in seconds).
   @param io_time I/O operation time (in seconds).
  
   If total_time > cpu_time + io_time, the CPU and I/O operations are repeated.
 */
void cpuio_bound(int total_time, int cpu_time, int io_time) {
    struct tms start_time, current_time;
    clock_t user_time, system_time;
    int sleep_time;

    while (total_time > 0) {
        /* Simulate CPU burst */
        times(&start_time);
        do {
            times(&current_time);
            user_time = current_time.tms_utime - start_time.tms_utime;
            system_time = current_time.tms_stime - start_time.tms_stime;
        } while (((user_time + system_time) / HZ) < cpu_time);

        total_time -= cpu_time;
        if (total_time <= 0)
            break;

        /* Simulate I/O burst */
        sleep_time = 0;
        while (sleep_time < io_time) {
            sleep(1);
            sleep_time++;
        }

        total_time -= sleep_time;
    }
}
