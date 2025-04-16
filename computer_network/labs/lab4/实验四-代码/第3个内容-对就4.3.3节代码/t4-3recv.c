#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>

#define PORT 12345
#define REPLY_MESSAGE "Hello! Got your message loud and clear."

int main() {
    int sockfd;
    struct sockaddr_in server_addr, client_addr;
    socklen_t addr_len = sizeof(client_addr);
    char buffer[1024];

    // 创建 UDP 套接字
    sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sockfd < 0) {
        perror("Socket creation failed");
        return 1;
    }

    // 绑定套接字到端口
    memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(PORT);

    if (bind(sockfd, (struct sockaddr*)&server_addr, sizeof(server_addr)) < 0) {
        perror("Bind failed");
        close(sockfd);
        return 1;
    }

    // 接收数据包
    int recv_len = recvfrom(sockfd, buffer, sizeof(buffer) - 1, 0, (struct sockaddr*)&client_addr, &addr_len);
    if (recv_len < 0) {
        perror("Recvfrom failed");
        close(sockfd);
        return 1;
    }
    buffer[recv_len] = '\0';

    // 打印接收到的消息及其详细信息
    printf("Received message: %s\n", buffer);
    printf("Source IP: %s\n", inet_ntoa(client_addr.sin_addr));
    printf("Source Port: %d\n", ntohs(client_addr.sin_port));

    // 发送回复消息
    if (sendto(sockfd, REPLY_MESSAGE, strlen(REPLY_MESSAGE), 0, (struct sockaddr*)&client_addr, addr_len) < 0) {
        perror("Sendto failed");
        close(sockfd);
        return 1;
    }

    printf("Reply message sent: %s\n", REPLY_MESSAGE);

    close(sockfd);
    return 0;
}