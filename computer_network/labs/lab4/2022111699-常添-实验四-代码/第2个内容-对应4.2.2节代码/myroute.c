#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <arpa/inet.h>
#include <netinet/ip.h>
#include <netinet/if_ether.h>
#include <netinet/ether.h>
#include <sys/socket.h>
#include <unistd.h>
#include <linux/if_packet.h>
#include <net/if.h>
#include <sys/ioctl.h>
#include <time.h>

#define BUFFER_SIZE 65536

unsigned short checksum(void *b, int len)
{
    unsigned short *buf = b;
    unsigned int sum = 0;
    unsigned short result;
    for (sum = 0; len > 1; len -= 2)
        sum += *buf++;
    if (len == 1)
        sum += *(unsigned char *)buf;
    sum = (sum >> 16) + (sum & 0xFFFF);
    sum += (sum >> 16);
    result = ~sum;
    return result;
}

void format_mac_address(unsigned char *mac, char *formatted_mac)
{
    sprintf(formatted_mac, "%02X:%02X:%02X:%02X:%02X:%02X",
            mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
}

int main()
{
    int sockfd;
    struct sockaddr saddr;
    unsigned char *buffer = (unsigned char *)malloc(BUFFER_SIZE);

    sockfd = socket(AF_PACKET, SOCK_RAW, htons(ETH_P_IP));
    if (sockfd < 0)
    {
        perror("Socket creation failed");
        return 1;
    }

    while (1)
    {
        int saddr_len = sizeof(saddr);
        int data_size = recvfrom(sockfd, buffer, BUFFER_SIZE, 0, &saddr, (socklen_t *)&saddr_len);
        if (data_size < 0)
        {
            perror("Recvfrom error");
            return 1;
        }

        struct ethhdr *eth_header = (struct ethhdr *)buffer;
        struct iphdr *ip_header = (struct iphdr *)(buffer + sizeof(struct ethhdr));

        char src_ip[INET_ADDRSTRLEN];
        char dest_ip[INET_ADDRSTRLEN];
        inet_ntop(AF_INET, &(ip_header->saddr), src_ip, INET_ADDRSTRLEN);
        inet_ntop(AF_INET, &(ip_header->daddr), dest_ip, INET_ADDRSTRLEN);

        if (strcmp(src_ip, "172.21.194.43") == 0 && strcmp(dest_ip, "172.21.199.45") == 0)
        {
            // 获取当前系统时间
            time_t rawtime;
            struct tm *timeinfo;
            char time_str[100];
            time(&rawtime);
            timeinfo = localtime(&rawtime);
            strftime(time_str, sizeof(time_str), "%Y-%m-%d %H:%M:%S", timeinfo);

            // 格式化 MAC 地址
            char src_mac[18], dest_mac[18];
            format_mac_address(eth_header->h_source, src_mac);
            format_mac_address(eth_header->h_dest, dest_mac);

            // 打印收到的数据包信息
            printf("[%s] Captured packet:\n", time_str);
            printf("  Source MAC Address: %s\n", src_mac);
            printf("  Destination MAC Address: %s\n", dest_mac);
            printf("  Source IP Address: %s\n", src_ip);
            printf("  Destination IP Address: %s\n", dest_ip);
            printf("  TTL: %d\n", ip_header->ttl);

            // 修改 TTL
            ip_header->ttl -= 1;
            ip_header->check = 0;
            ip_header->check = checksum((unsigned short *)ip_header, ip_header->ihl * 4);

            // 设置 MAC 地址和发送数据包
            struct ifreq ifr, ifr_mac;
            struct sockaddr_ll dest;

            memset(&ifr, 0, sizeof(ifr));
            snprintf(ifr.ifr_name, sizeof(ifr.ifr_name), "ens33");
            if (ioctl(sockfd, SIOCGIFINDEX, &ifr) < 0)
            {
                perror("ioctl");
                return 1;
            }

            memset(&ifr_mac, 0, sizeof(ifr_mac));
            snprintf(ifr_mac.ifr_name, sizeof(ifr_mac.ifr_name), "ens33");
            if (ioctl(sockfd, SIOCGIFHWADDR, &ifr_mac) < 0)
            {
                perror("ioctl");
                return 1;
            }

            unsigned char target_mac[ETH_ALEN] = {0x00, 0x0c, 0x29, 0xa4, 0xe3, 0xe8}; // 目标 MAC 地址
            memset(&dest, 0, sizeof(dest));
            dest.sll_ifindex = ifr.ifr_ifindex;
            dest.sll_halen = ETH_ALEN;
            memcpy(dest.sll_addr, target_mac, ETH_ALEN);

            memcpy(eth_header->h_dest, target_mac, ETH_ALEN);
            memcpy(eth_header->h_source, ifr_mac.ifr_hwaddr.sa_data, ETH_ALEN);
            eth_header->h_proto = htons(ETH_P_IP);

            printf("Interface name: %s, index: %d\n", ifr.ifr_name, ifr.ifr_ifindex);

            if (sendto(sockfd, buffer, data_size, 0, (struct sockaddr *)&dest, sizeof(dest)) < 0)
            {
                perror("Sendto error");
                return 1;
            }
            printf("Datagram forwarded.\n\n");
        }
    }

    close(sockfd);
    free(buffer);
    return 0;
}
