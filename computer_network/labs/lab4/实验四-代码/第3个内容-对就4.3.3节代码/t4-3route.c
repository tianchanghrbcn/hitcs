#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <arpa/inet.h>
#include <netinet/ip.h>
#include <netinet/udp.h>
#include <netinet/if_ether.h>
#include <sys/socket.h>
#include <unistd.h>
#include <net/if.h>
#include <linux/if_packet.h>
#include <sys/ioctl.h>

#define BUFFER_SIZE 65536

struct route_entry {
    uint32_t dest;
    uint32_t gateway;
    uint32_t netmask;
    char interface[IFNAMSIZ];
};

struct route_entry route_table[1];
int route_table_size = sizeof(route_table) / sizeof(route_table[0]);

void convert_to_ip_string(uint32_t ip_addr, char* ip_str) {
    struct in_addr addr;
    addr.s_addr = ip_addr;
    inet_ntop(AF_INET, &addr, ip_str, INET_ADDRSTRLEN);
}

unsigned short checksum(void* b, int len) {
    unsigned short* buf = b;
    unsigned int sum = 0;
    unsigned short result;
    for (sum = 0; len > 1; len -= 2)
        sum += *buf++;
    if (len == 1)
        sum += *(unsigned char*)buf;
    sum = (sum >> 16) + (sum & 0xFFFF);
    sum += (sum >> 16);
    result = ~sum;
    return result;
}

struct route_entry* lookup_route(uint32_t dest_ip) {
    for (int i = 0; i < route_table_size; i++) {
        if ((dest_ip & route_table[i].netmask) == (route_table[i].dest & route_table[i].netmask)) {
            return &route_table[i];
        }
    }
    return NULL;
}

void initialize_route_table() {
    route_table[0].dest = inet_addr("192.168.2.0");         // 目的网段的网络地址
    route_table[0].gateway = inet_addr("192.168.2.1");      // 路由器接口 2 的 IP 地址，用于连接目的网段
    route_table[0].netmask = inet_addr("255.255.255.0");    // 目标网段的子网掩码
    strcpy(route_table[0].interface, "ens37");              // 路由器连接目的主机的接口名称（ens37）
}

void print_packet_info(struct ethhdr* eth_header, struct iphdr* ip_header, struct udphdr* udp_header) {
    char src_ip[INET_ADDRSTRLEN], dest_ip[INET_ADDRSTRLEN];
    convert_to_ip_string(ip_header->saddr, src_ip);
    convert_to_ip_string(ip_header->daddr, dest_ip);

    printf("Captured packet:\n");
    printf("  Source MAC: %02x:%02x:%02x:%02x:%02x:%02x\n", eth_header->h_source[0], eth_header->h_source[1], eth_header->h_source[2], eth_header->h_source[3], eth_header->h_source[4], eth_header->h_source[5]);
    printf("  Destination MAC: %02x:%02x:%02x:%02x:%02x:%02x\n", eth_header->h_dest[0], eth_header->h_dest[1], eth_header->h_dest[2], eth_header->h_dest[3], eth_header->h_dest[4], eth_header->h_dest[5]);
    printf("  Source IP: %s\n", src_ip);
    printf("  Destination IP: %s\n", dest_ip);
    printf("  TTL: %d\n", ip_header->ttl);
    printf("  Source Port: %d\n", ntohs(udp_header->source));
    printf("  Destination Port: %d\n", ntohs(udp_header->dest));
}

int main() {
    int sockfd;
    struct sockaddr saddr;
    unsigned char* buffer = (unsigned char*)malloc(BUFFER_SIZE);

    initialize_route_table();

    sockfd = socket(AF_PACKET, SOCK_RAW, htons(ETH_P_IP));
    if (sockfd < 0) {
        perror("Socket creation failed");
        return 1;
    }

    while (1) {
        int saddr_len = sizeof(saddr);
        int data_size = recvfrom(sockfd, buffer, BUFFER_SIZE, 0, &saddr, (socklen_t*)&saddr_len);
        if (data_size < 0) {
            perror("Recvfrom error");
            continue;
        }

        struct ethhdr* eth_header = (struct ethhdr*)buffer;
        struct iphdr* ip_header = (struct iphdr*)(buffer + sizeof(struct ethhdr));

        // 如果数据包协议不是 UDP，跳过
        if (ip_header->protocol != IPPROTO_UDP) {
            continue;
        }

        struct udphdr* udp_header = (struct udphdr*)(buffer + sizeof(struct ethhdr) + ip_header->ihl * 4);
        struct route_entry* route = lookup_route(ip_header->daddr);
        if (route == NULL) {
            continue;
        }

        print_packet_info(eth_header, ip_header, udp_header);

        // 修改 TTL
        ip_header->ttl -= 1;
        ip_header->check = 0;
        ip_header->check = checksum((unsigned short*)ip_header, ip_header->ihl * 4);

        // 获取网卡接口索引
        struct ifreq ifr;
        memset(&ifr, 0, sizeof(ifr));
        snprintf(ifr.ifr_name, sizeof(ifr.ifr_name), route->interface);
        if (ioctl(sockfd, SIOCGIFINDEX, &ifr) < 0) {
            perror("ioctl");
            continue;
        }

        // 设置目标 MAC 地址为目的主机的 MAC 地址
        unsigned char target_mac[ETH_ALEN] = { 0x00, 0x0c, 0x29, 0xaf, 0x55, 0xca };
        struct sockaddr_ll dest;
        memset(&dest, 0, sizeof(dest));
        dest.sll_ifindex = ifr.ifr_ifindex;
        dest.sll_halen = ETH_ALEN;
        memcpy(dest.sll_addr, target_mac, ETH_ALEN);

        // 设置源和目标 MAC 地址
        memcpy(eth_header->h_dest, target_mac, ETH_ALEN);
        memcpy(eth_header->h_source, ifr.ifr_hwaddr.sa_data, ETH_ALEN);  // 使用路由器接口 2 的 MAC 地址
        eth_header->h_proto = htons(ETH_P_IP);

        if (sendto(sockfd, buffer, data_size, 0, (struct sockaddr*)&dest, sizeof(dest)) < 0) {
            perror("Sendto error");
            continue;
        }
    }

    close(sockfd);
    free(buffer);
    return 0;
}
