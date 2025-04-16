#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>
#include <time.h>

#define PORT 54321

int main() {
    int sockfd;
    struct sockaddr_in recv_addr;
    char buffer[1024];
    socklen_t addr_len = sizeof(recv_addr);

    // 创建 UDP 套接字
    if ((sockfd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) < 0) {
        perror("socket");
        return 1;
    }

    // 绑定到接收端口
    recv_addr.sin_family = AF_INET;
    recv_addr.sin_port = htons(PORT);
    recv_addr.sin_addr.s_addr = INADDR_ANY;

    if (bind(sockfd, (struct sockaddr *)&recv_addr, sizeof(recv_addr)) < 0) {
        perror("bind");
        return 1;
    }

    while (1) {
        // 接收数据报
        int recv_len = recvfrom(sockfd, buffer, sizeof(buffer) - 1, 0, (struct sockaddr *)&recv_addr, &addr_len);
        if (recv_len < 0) {
            perror("recvfrom");
            return 1;
        }
        buffer[recv_len] = '\0';

        // 获取当前时间并格式化输出
        time_t now = time(NULL);
        struct tm *timeinfo = localtime(&now);
        char time_str[100];
        strftime(time_str, sizeof(time_str), "%Y-%m-%d %H:%M:%S", timeinfo);

        // 打印接收时间和消息内容
        printf("[%s] Received message: %s\n", time_str, buffer);
    }

    close(sockfd);
    return 0;
}
