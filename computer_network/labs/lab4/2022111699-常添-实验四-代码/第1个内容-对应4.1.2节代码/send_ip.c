#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>

#define PORT 12345 // 目标端口号

int main() {
    int sockfd;
    struct sockaddr_in dest_addr;
    char message[1024];

    // 创建 UDP 套接字
    if ((sockfd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) < 0) {
        perror("socket");
        return 1;
    }

    // 配置目标地址（主机 B 的 IP 地址）
    dest_addr.sin_family = AF_INET;
    dest_addr.sin_port = htons(PORT);
    dest_addr.sin_addr.s_addr = inet_addr("172.21.206.239"); // 替换为主机 B 的 IP 地址

    while (1) {
        // 从控制台输入消息
        printf("Enter message to send (or type 'exit' to quit): ");
        fgets(message, sizeof(message), stdin);
        message[strcspn(message, "\n")] = 0;  // 去掉换行符

        if (strcmp(message, "exit") == 0) break;

        // 发送数据报
        if (sendto(sockfd, message, strlen(message), 0, (struct sockaddr *)&dest_addr, sizeof(dest_addr)) < 0) {
            perror("sendto");
            return 1;
        }
        printf("Datagram sent: %s\n", message);
    }

    close(sockfd);
    return 0;
}
