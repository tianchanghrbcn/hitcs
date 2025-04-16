#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>
#include <netinet/ip.h>
#include <netinet/udp.h>
#include <net/ethernet.h>
#include <net/if.h>
#include <sys/ioctl.h>
#include <linux/if_packet.h>
#include <netinet/ether.h>

#define DEST_IP "192.168.2.2"         // 修改为目的主机 IP
#define DEST_PORT 12345               // 目的端口
#define LOCAL_PORT 54321              // 本地端口
#define MESSAGE "Hello, this is a test message."

void print_packet_info(struct sockaddr_in* src_addr, struct sockaddr_in* dest_addr, char* message, int ttl) {
    printf("Received message: %s\n", message);
    printf("Source IP: %s\n", inet_ntoa(src_addr->sin_addr));
    printf("Destination IP: %s\n", inet_ntoa(dest_addr->sin_addr));
    printf("Source Port: %d\n", ntohs(src_addr->sin_port));
    printf("Destination Port: %d\n", ntohs(dest_addr->sin_port));
    printf("TTL: %d\n", ttl);
}

int main() {
    int sockfd;
    struct sockaddr_in local_addr, dest_addr, recv_addr;
    socklen_t addr_len = sizeof(recv_addr);
    char buffer[1024];
    int ttl = 64; // 设置TTL值

    // 创建UDP套接字
    sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sockfd < 0) {
        perror("Socket creation failed");
        return 1;
    }

    // 设置本地地址
    memset(&local_addr, 0, sizeof(local_addr));
    local_addr.sin_family = AF_INET;
    local_addr.sin_addr.s_addr = inet_addr("172.20.10.4");  // 设置为源主机 IP
    local_addr.sin_port = htons(LOCAL_PORT);

    if (bind(sockfd, (struct sockaddr*)&local_addr, sizeof(local_addr)) < 0) {
        perror("Bind failed");
        close(sockfd);
        return 1;
    }

    // 设置目的地址
    memset(&dest_addr, 0, sizeof(dest_addr));
    dest_addr.sin_family = AF_INET;
    dest_addr.sin_port = htons(DEST_PORT);
    inet_pton(AF_INET, DEST_IP, &dest_addr.sin_addr);

    // 发送数据包
    if (sendto(sockfd, MESSAGE, strlen(MESSAGE), 0, (struct sockaddr*)&dest_addr, sizeof(dest_addr)) < 0) {
        perror("Sendto failed");
        close(sockfd);
        return 1;
    }
    printf("Message sent to %s:%d\n", DEST_IP, DEST_PORT);

    // 接收回复
    memset(buffer, 0, sizeof(buffer));
    if (recvfrom(sockfd, buffer, sizeof(buffer), 0, (struct sockaddr*)&recv_addr, &addr_len) < 0) {
        perror("Recvfrom failed");
        close(sockfd);
        return 1;
    }

    // 打印数据包信息
    print_packet_info(&recv_addr, &local_addr, buffer, ttl);

    close(sockfd);
    return 0;
}
