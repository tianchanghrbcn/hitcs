#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>
#include <time.h>
#include <netinet/ip.h>
#include <netinet/udp.h>
#include <netinet/if_ether.h>
#include <net/if_arp.h>
#include <netinet/ether.h>
#include <linux/if_packet.h>

#define PORT 12345
#define BUFFER_SIZE 65536

int main()
{
    int sockfd;
    struct sockaddr saddr;
    socklen_t saddr_len = sizeof(saddr);
    char buffer[BUFFER_SIZE];

    // 创建原始套接字以接收以太网帧
    sockfd = socket(AF_PACKET, SOCK_RAW, htons(ETH_P_IP));
    if (sockfd < 0)
    {
        perror("Socket creation failed");
        return 1;
    }

    while (1)
    {
        // 接收数据包
        int recv_len = recvfrom(sockfd, buffer, BUFFER_SIZE, 0, &saddr, &saddr_len);
        if (recv_len < 0)
        {
            perror("Recvfrom failed");
            return 1;
        }

        // 提取以太网头信息
        struct ethhdr *eth_header = (struct ethhdr *)buffer;

        // 提取 IP 头信息
        struct iphdr *ip_header = (struct iphdr *)(buffer + sizeof(struct ethhdr));

        // 检查是否为 UDP 协议
        if (ip_header->protocol != IPPROTO_UDP)
            continue;

        // 提取 UDP 头信息
        struct udphdr *udp_header = (struct udphdr *)(buffer + sizeof(struct ethhdr) + ip_header->ihl * 4);

        // 检查目标端口是否为指定端口
        if (ntohs(udp_header->dest) != PORT)
            continue;

        // 获取当前时间
        time_t now = time(NULL);
        struct tm *local = localtime(&now);
        char time_str[100];
        strftime(time_str, sizeof(time_str), "%Y-%m-%d %H:%M:%S", local);

        // 打印捕获到的数据包信息
        printf("Received time: %s\n", time_str);
        printf("Source MAC Address: %02X:%02X:%02X:%02X:%02X:%02X\n",
               eth_header->h_source[0], eth_header->h_source[1], eth_header->h_source[2],
               eth_header->h_source[3], eth_header->h_source[4], eth_header->h_source[5]);
        printf("Destination MAC Address: %02X:%02X:%02X:%02X:%02X:%02X\n",
               eth_header->h_dest[0], eth_header->h_dest[1], eth_header->h_dest[2],
               eth_header->h_dest[3], eth_header->h_dest[4], eth_header->h_dest[5]);

        // 打印 IP 信息
        struct in_addr source_ip, dest_ip;
        source_ip.s_addr = ip_header->saddr;
        dest_ip.s_addr = ip_header->daddr;
        printf("Source IP Address: %s\n", inet_ntoa(source_ip));
        printf("Destination IP Address: %s\n", inet_ntoa(dest_ip));
        printf("Time to Live (TTL): %d\n", ip_header->ttl);

        // 打印 UDP 头信息
        printf("Source Port: %d\n", ntohs(udp_header->source));
        printf("Destination Port: %d\n", ntohs(udp_header->dest));

        // 提取并打印消息内容
        int udp_len = ntohs(udp_header->len) - sizeof(struct udphdr); // 实际数据长度
        char *msg = buffer + sizeof(struct ethhdr) + ip_header->ihl * 4 + sizeof(struct udphdr);
        printf("Received message: %.*s\n", udp_len, msg); // 打印指定长度的消息内容
    }

    close(sockfd);
    return 0;
}
