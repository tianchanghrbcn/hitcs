#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>
#include <time.h>

int main()
{
    int sockfd;
    struct sockaddr_in src_addr, dest_addr, my_addr;
    char buffer[1024];
    socklen_t addr_len;
    int src_port = 12345;  // 原始端口号
    int dest_port = 54321; // 目标端口号

    // 创建 UDP 套接字
    if ((sockfd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) < 0)
    {
        perror("Socket creation failed");
        return 1;
    }

    // 本地地址
    my_addr.sin_family = AF_INET;
    my_addr.sin_port = htons(src_port);
    my_addr.sin_addr.s_addr = INADDR_ANY;

    // 绑定套接字到本地地址
    if (bind(sockfd, (struct sockaddr *)&my_addr, sizeof(my_addr)) < 0)
    {
        perror("Bind failed");
        return 1;
    }

    // 设置目标地址
    dest_addr.sin_family = AF_INET;
    dest_addr.sin_port = htons(dest_port);
    dest_addr.sin_addr.s_addr = inet_addr("172.21.199.45"); // 目标主机 IP 地址

    while (1)
    {
        // 接收数据包
        addr_len = sizeof(src_addr);
        int recv_len = recvfrom(sockfd, buffer, sizeof(buffer) - 1, 0, (struct sockaddr *)&src_addr, &addr_len);
        if (recv_len < 0)
        {
            perror("Recvfrom failed");
            continue;
        }

        // 获取当前时间
        time_t now = time(NULL);
        struct tm *local_time = localtime(&now);
        char time_str[100];
        strftime(time_str, sizeof(time_str), "%Y-%m-%d %H:%M:%S", local_time);
        
        buffer[recv_len] = '\0'; // 确保消息以空字符结尾

        // 打印接收时间、IP 和消息内容
        printf("Received time: %s\n", time_str);
        printf("Source IP Address: %s\n", inet_ntoa(src_addr.sin_addr));
        printf("Message: %s\n", buffer);

        // 将接收的消息转发到目标地址
        if (sendto(sockfd, buffer, strlen(buffer), 0, (struct sockaddr *)&dest_addr, sizeof(dest_addr)) < 0)
        {
            perror("Sendto failed");
            continue;
        }

        printf("Message forwarded.\n\n");
    }

    close(sockfd);
    return 0;
}
