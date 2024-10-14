/* File:       pi_c.c
 *
 * Purpose:    Estimates pi using the Leibniz formula (in C).
 *
 *
 * Compile:    gcc -o pi_c pi_c.c -lm
 * Run:        ./pi_c
 */

#include <stdio.h>
#include <math.h>
#include <time.h>

/* We define pi here so we can check and see how accurate our computation is. */
#define PI 3.141592653589793238462643

int main(int argc, char **argv) {
        int intervals;
        printf("Number of intervals: ");
        fflush(stdout);
        scanf("%d", &intervals);

        clock_t time1 = clock();

        int i;
        double sum, total = 0;
        for (i = 0; i < intervals; ++i) {
                total += pow(-1, i) / (2 * i + 1);
        }

        clock_t  time2 = clock();

        total = total * 4;
        printf("Result:   %.10lf\n", total);
        printf("Accuracy: %.10lf\n", PI - total);
        printf("Time:     %.10lf\n", (double)(time2 - time1)/CLOCKS_PER_SEC);
}

