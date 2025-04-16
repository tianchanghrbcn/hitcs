#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <netinet/ip.h>
#include <netinet/udp.h>
#include <netinet/ether.h>
#include <net/if.h>
#include <sys/ioctl.h>
#include <linux/if_packet.h>
#include <time.h>

#define DEST_MAC0 0x00
#define DEST_MAC1 0x0c
#define DEST_MAC2 0x29
#define DEST_MAC3 0xef
#define DEST_MAC4 0x69
#define DEST_MAC5 0xfc
#define ETHER_TYPE 0x0800
#define BUFFER_SIZE 1518
#define UDP_SRC_PORT 12345
#define UDP_DST_PORT 12345

unsigned short checksum(void *b, int len) {
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

int main() {
  int sockfd;
  struct ifreq if_idx, if_mac;
  struct sockaddr_ll socket_address;
  char buffer[BUFFER_SIZE];
  char msg[] = "Hello, this is a test message.111111111";

  // 创建原始套接字
  if ((sockfd = socket(AF_PACKET, SOCK_RAW, htons(ETH_P_ALL))) == -1) {
    perror("socket");
    return 1;
  }

  // 获取接口索引
  memset(&if_idx, 0, sizeof(struct ifreq));
  strncpy(if_idx.ifr_name, "ens33", IFNAMSIZ - 1);
  if (ioctl(sockfd, SIOCGIFINDEX, &if_idx) < 0) {
    perror("SIOCGIFINDEX");
    return 1;
  }

  // 获取接口 MAC 地址
  memset(&if_mac, 0, sizeof(struct ifreq));
  strncpy(if_mac.ifr_name, "ens33", IFNAMSIZ - 1);
  if (ioctl(sockfd, SIOCGIFHWADDR, &if_mac) < 0) {
    perror("SIOCGIFHWADDR");
    return 1;
  }

  // 当前时间
  time_t t = time(NULL);
  struct tm *tm_info = localtime(&t);
  char time_str[26];
  strftime(time_str, 26, "%Y-%m-%d %H:%M:%S", tm_info);
  printf("Packet send time: %s\n", time_str);

  // 构造以太网头
  struct ether_header *eh = (struct ether_header *)buffer;
  eh->ether_shost[0] = ((uint8_t *)&if_mac.ifr_hwaddr.sa_data)[0];
  eh->ether_shost[1] = ((uint8_t *)&if_mac.ifr_hwaddr.sa_data)[1];
  eh->ether_shost[2] = ((uint8_t *)&if_mac.ifr_hwaddr.sa_data)[2];
  eh->ether_shost[3] = ((uint8_t *)&if_mac.ifr_hwaddr.sa_data)[3];
  eh->ether_shost[4] = ((uint8_t *)&if_mac.ifr_hwaddr.sa_data)[4];
  eh->ether_shost[5] = ((uint8_t *)&if_mac.ifr_hwaddr.sa_data)[5];

  printf("Source MAC Address: %02x:%02x:%02x:%02x:%02x:%02x\n",
         eh->ether_shost[0], eh->ether_shost[1], eh->ether_shost[2],
         eh->ether_shost[3], eh->ether_shost[4], eh->ether_shost[5]);

  eh->ether_dhost[0] = DEST_MAC0;
  eh->ether_dhost[1] = DEST_MAC1;
  eh->ether_dhost[2] = DEST_MAC2;
  eh->ether_dhost[3] = DEST_MAC3;
  eh->ether_dhost[4] = DEST_MAC4;
  eh->ether_dhost[5] = DEST_MAC5;
  eh->ether_type = htons(ETHER_TYPE);

  printf("Destination MAC Address: %02x:%02x:%02x:%02x:%02x:%02x\n",
         eh->ether_dhost[0], eh->ether_dhost[1], eh->ether_dhost[2],
         eh->ether_dhost[3], eh->ether_dhost[4], eh->ether_dhost[5]);

  // 构造 IP 头
  struct iphdr *iph = (struct iphdr *)(buffer + sizeof(struct ether_header));
  iph->ihl = 5;
  iph->version = 4;
  iph->tos = 0;
  iph->tot_len = htons(sizeof(struct iphdr) + sizeof(struct udphdr) + strlen(msg));
  iph->id = htonl(54321);
  iph->frag_off = 0;
  iph->ttl = 255;
  iph->protocol = IPPROTO_UDP;
  iph->check = 0;
  iph->saddr = inet_addr("172.21.194.43");
  iph->daddr = inet_addr("172.21.199.45");
  iph->check = checksum((unsigned short *)iph, sizeof(struct iphdr));

  printf("Source IP Address: %s\n", inet_ntoa(*(struct in_addr *)&iph->saddr));
  printf("Destination IP Address: %s\n", inet_ntoa(*(struct in_addr *)&iph->daddr));
  printf("TTL: %d\n", iph->ttl);

  // 构造 UDP 头
  struct udphdr *udph = (struct udphdr *)(buffer + sizeof(struct ether_header) + sizeof(struct iphdr));
  udph->source = htons(UDP_SRC_PORT);
  udph->dest = htons(UDP_DST_PORT);
  udph->len = htons(sizeof(struct udphdr) + strlen(msg));
  udph->check = 0; // UDP 校验和可选

  // 填充数据
  char *data = (char *)(buffer + sizeof(struct ether_header) + sizeof(struct iphdr) + sizeof(struct udphdr));
  strcpy(data, msg);

  // 设置 socket 地址
  socket_address.sll_ifindex = if_idx.ifr_ifindex;
  socket_address.sll_halen = ETH_ALEN;
  socket_address.sll_addr[0] = DEST_MAC0;
  socket_address.sll_addr[1] = DEST_MAC1;
  socket_address.sll_addr[2] = DEST_MAC2;
  socket_address.sll_addr[3] = DEST_MAC3;
  socket_address.sll_addr[4] = DEST_MAC4;
  socket_address.sll_addr[5] = DEST_MAC5;

  // 发送数据包
  int len = sizeof(struct ether_header) + sizeof(struct iphdr) + sizeof(struct udphdr) + strlen(msg);
  printf("Packet Length: %d bytes\n", len);

  if (sendto(sockfd, buffer, len, 0, (struct sockaddr *)&socket_address, sizeof(struct sockaddr_ll)) < 0) {
    perror("sendto");
    return 1;
  }

  close(sockfd);
  return 0;
}
