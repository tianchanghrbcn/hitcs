#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <winsock2.h>
#include <process.h>
#include <time.h>

#pragma comment(lib, "Ws2_32.lib")

#define MAXSIZE 65507          // 最大数据包大小
#define HTTP_PORT 80           // 目标服务器的 HTTP 端口
#define PROXY_PORT 8080        // 代理服务器监听的端口
#define CACHE_SIZE 10          // 缓存容量

// 定义 HTTP 请求头结构体
struct HttpHeader {
    char method[8];          // 请求方法（GET, POST 等）
    char url[1024];          // 请求的 URL
    char host[1024];         // 请求的主机名
    char cookie[1024 * 10];  // 请求中的 Cookie 信息
};

// 定义缓存条目结构体
struct CacheEntry {
    char url[1024];           // 缓存的 URL
    char content[MAXSIZE];    // 缓存的内容
    time_t last_modified;     // 缓存的最后修改时间
};

// 全局缓存和黑名单
struct CacheEntry cache[CACHE_SIZE];          // 缓存数组
char* blacklist[] = { "example.com" };        // 禁止访问的网站
char* redirect_sites[] = { "www.cctv.cn" };   // 重定向的网站
char redirect_url[] = "today.hit.edu.cn";          // 重定向目标 URL

// 用户 IP 黑名单
char* user_blacklist[] = { "127.0.0.1", "192.168.1.100" }; // 禁止访问的用户 IP

// 函数声明
BOOL InitSocket(); // 初始化代理服务器的套接字
void InitializeHttpHeader(struct HttpHeader* httpHeader); // 初始化 HTTP 头
void ParseHttpHead(char* buffer, struct HttpHeader* httpHeader); // 解析 HTTP 头
BOOL ConnectToServer(SOCKET* serverSocket, char* host, struct HttpHeader* httpHeader, struct CacheEntry* cacheEntry); // 连接到目标服务器
unsigned int __stdcall ProxyThread(LPVOID lpParameter); // 处理客户端请求的线程
int check_cache(char* url, char* content); // 检查缓存是否命中
void add_to_cache(char* url, char* content); // 将内容添加到缓存
BOOL is_blacklisted(char* host); // 检查主机是否在黑名单中
BOOL should_redirect(char* host); // 检查主机是否需要重定向
BOOL is_user_blacklisted(char* ip); // 检查用户 IP 是否在黑名单中

// 全局变量
SOCKET ProxyServer;
struct sockaddr_in ProxyServerAddr;

// 初始化代理服务器的套接字，设置为监听模式
BOOL InitSocket() {
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        printf("Winsock 初始化失败\n");
        return FALSE;
    }
    ProxyServer = socket(AF_INET, SOCK_STREAM, 0);
    if (ProxyServer == INVALID_SOCKET) {
        printf("创建 Socket 失败\n");
        return FALSE;
    }
    ProxyServerAddr.sin_family = AF_INET;
    ProxyServerAddr.sin_addr.s_addr = INADDR_ANY;
    ProxyServerAddr.sin_port = htons(PROXY_PORT);
    if (bind(ProxyServer, (struct sockaddr*)&ProxyServerAddr, sizeof(ProxyServerAddr)) == SOCKET_ERROR) {
        printf("绑定 Socket 失败\n");
        return FALSE;
    }
    if (listen(ProxyServer, SOMAXCONN) == SOCKET_ERROR) {
        printf("监听端口失败\n");
        return FALSE;
    }
    printf("代理服务器正在监听端口 %d\n", PROXY_PORT);
    return TRUE;
}

// 初始化 HTTP 头部结构体
void InitializeHttpHeader(struct HttpHeader* httpHeader) {
    memset(httpHeader, 0, sizeof(struct HttpHeader));
}

// 解析 HTTP 请求头，将方法、URL、主机等信息存储到 HttpHeader 结构体中
void ParseHttpHead(char* buffer, struct HttpHeader* httpHeader) {
    char* p = strtok(buffer, "\r\n");
    if (p) {
        // 提取请求方法（GET, POST 等）
        if (strncmp(p, "GET", 3) == 0) {
            strcpy(httpHeader->method, "GET");
            sscanf(p, "GET %s HTTP", httpHeader->url);
        }
        else if (strncmp(p, "POST", 4) == 0) {
            strcpy(httpHeader->method, "POST");
            sscanf(p, "POST %s HTTP", httpHeader->url);
        }
    }
    // 提取主机名和 Cookie 信息
    while (p) {
        if (strncmp(p, "Host:", 5) == 0) {
            sscanf(p, "Host: %s", httpHeader->host);
        }
        else if (strncmp(p, "Cookie:", 7) == 0) {
            strcpy(httpHeader->cookie, p + 8);
        }
        p = strtok(NULL, "\r\n");
    }
}

// 连接到目标服务器，如果缓存命中则添加 If-Modified-Since 头部进行请求
BOOL ConnectToServer(SOCKET* serverSocket, char* host, struct HttpHeader* httpHeader, struct CacheEntry* cacheEntry) {
    struct sockaddr_in serverAddr;
    struct hostent* server;

    server = gethostbyname(host); // 根据主机名获取 IP 地址
    if (server == NULL) {
        printf("主机地址解析失败\n");
        return FALSE;
    }

    *serverSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (*serverSocket == INVALID_SOCKET) {
        printf("连接目标服务器失败\n");
        return FALSE;
    }

    serverAddr.sin_family = AF_INET;
    serverAddr.sin_port = htons(HTTP_PORT);
    memcpy(&serverAddr.sin_addr.s_addr, server->h_addr_list[0], server->h_length);

    // 尝试连接目标服务器
    if (connect(*serverSocket, (struct sockaddr*)&serverAddr, sizeof(serverAddr)) < 0) {
        printf("连接目标服务器失败\n");
        return FALSE;
    }
    printf("成功连接到目标服务器 %s\n", host);

    // 构建 HTTP 请求
    char request[MAXSIZE];
    if (cacheEntry && cacheEntry->last_modified) {
        struct tm* lastModTime = gmtime(&cacheEntry->last_modified);
        char lastModifiedStr[128];
        strftime(lastModifiedStr, sizeof(lastModifiedStr), "%a, %d %b %Y %H:%M:%S GMT", lastModTime);

        // 添加 If-Modified-Since 头部
        snprintf(request, sizeof(request),
            "%s %s HTTP/1.1\r\nHost: %s\r\nIf-Modified-Since: %s\r\nConnection: close\r\nUser-Agent: YourUserAgent\r\nAccept: */*\r\n\r\n",
            httpHeader->method, httpHeader->url, host, lastModifiedStr);
        printf("Sending request with If-Modified-Since header:\n%s\n", lastModifiedStr);
    }
    else {
        snprintf(request, sizeof(request),
            "%s %s HTTP/1.1\r\nHost: %s\r\nConnection: close\r\nUser-Agent: YourUserAgent\r\nAccept: */*\r\n\r\n",
            httpHeader->method, httpHeader->url, host);
    }

    // 发送请求到目标服务器
    printf("Sending request:\n%s\n", request);
    if (send(*serverSocket, request, strlen(request), 0) == SOCKET_ERROR) {
        printf("发送请求失败\n");
        return FALSE;
    }

    return TRUE;
}

// 线程处理客户端请求，包括过滤、重定向和缓存检查
unsigned int __stdcall ProxyThread(LPVOID lpParameter) {
    SOCKET clientSocket = ((SOCKET*)lpParameter)[0];
    SOCKET serverSocket;
    char buffer[MAXSIZE];
    int recvSize;
    struct HttpHeader httpHeader;

    InitializeHttpHeader(&httpHeader);

    // 接收客户端请求
    recvSize = recv(clientSocket, buffer, MAXSIZE, 0);
    if (recvSize <= 0) {
        goto error;
    }

    ParseHttpHead(buffer, &httpHeader);

    // 获取客户端 IP 地址
    struct sockaddr_in clientAddr;
    int clientAddrLen = sizeof(clientAddr);
    getpeername(clientSocket, (struct sockaddr*)&clientAddr, &clientAddrLen);
    char* clientIP = inet_ntoa(clientAddr.sin_addr);

    // 检查用户 IP 是否在黑名单中
    if (is_user_blacklisted(clientIP)) {
        printf("访问被禁止的用户 IP：%s\n", clientIP);
        send(clientSocket, "HTTP/1.1 403 Forbidden\r\n\r\nBlocked User", 39, 0);
        goto error;
    }

    // 检查请求的主机是否在黑名单中
    if (is_blacklisted(httpHeader.host)) {
        printf("访问被阻止：%s\n", httpHeader.host);
        send(clientSocket, "HTTP/1.1 403 Forbidden\r\n\r\nBlocked Website", 39, 0);
        goto error;
    }

    // 检查是否需要重定向到其他主机
    if (should_redirect(httpHeader.host)) {
        strcpy(httpHeader.host, redirect_url);
        printf("重定向到：%s\n", redirect_url);
    }

    // 缓存检查：如果命中缓存则直接返回缓存内容
    if (check_cache(httpHeader.url, buffer)) {
        printf("缓存命中：%s\n", httpHeader.url);
        send(clientSocket, buffer, strlen(buffer), 0);
        goto error;
    }
    else {
        printf("缓存未命中：%s\n", httpHeader.url);
    }

    // 连接到目标服务器
    if (!ConnectToServer(&serverSocket, httpHeader.host, &httpHeader, cache)) {
        goto error;
    }

    // 转发请求并添加到缓存
    char request[MAXSIZE];
    sprintf(request, "%s %s HTTP/1.1\r\nHost: %s\r\nConnection: close\r\nUser-Agent: YourUserAgent\r\nAccept: */*\r\n\r\n",
        httpHeader.method, httpHeader.url, httpHeader.host);
    send(serverSocket, request, strlen(request), 0);

    // 接收目标服务器的响应并转发给客户端
    while ((recvSize = recv(serverSocket, buffer, MAXSIZE, 0)) > 0) {
        send(clientSocket, buffer, recvSize, 0);
        add_to_cache(httpHeader.url, buffer);
    }

error:
    closesocket(clientSocket);
    closesocket(serverSocket);
    _endthreadex(0);
    return 0;
}

// 主函数，初始化服务器并进入主循环等待客户端连接
int main() {
    if (!InitSocket()) {
        printf("服务器初始化失败\n");
        return -1;
    }

    while (TRUE) {
        SOCKET clientSocket;
        struct sockaddr_in clientAddr;
        int clientAddrLen = sizeof(clientAddr);
        clientSocket = accept(ProxyServer, (struct sockaddr*)&clientAddr, &clientAddrLen);
        if (clientSocket == INVALID_SOCKET) {
            printf("接受客户端连接失败\n");
            continue;
        }
        printf("客户端已连接：%s\n", inet_ntoa(clientAddr.sin_addr));
        _beginthreadex(NULL, 0, ProxyThread, (void*)&clientSocket, 0, NULL);
    }

    closesocket(ProxyServer);
    WSACleanup();
    return 0;
}

// 检查缓存是否存在指定 URL 的内容
int check_cache(char* url, char* content) {
    for (int i = 0; i < CACHE_SIZE; i++) {
        if (strcmp(cache[i].url, url) == 0) {
            strcpy(content, cache[i].content);
            return 1;
        }
    }
    return 0;
}

// 添加内容到缓存中，环形缓冲机制
void add_to_cache(char* url, char* content) {
    static int index = 0;
    strcpy(cache[index].url, url);
    strcpy(cache[index].content, content);
    cache[index].last_modified = time(NULL);
    printf("已缓存 URL：%s，缓存索引：%d\n", url, index);
    index = (index + 1) % CACHE_SIZE;
}

// 检查主机是否在黑名单中
BOOL is_blacklisted(char* host) {
    for (int i = 0; i < sizeof(blacklist) / sizeof(blacklist[0]); i++) {
        if (strstr(host, blacklist[i]) != NULL) {
            return TRUE;
        }
    }
    return FALSE;
}

// 检查主机是否需要重定向
BOOL should_redirect(char* host) {
    for (int i = 0; i < sizeof(redirect_sites) / sizeof(redirect_sites[0]); i++) {
        if (strstr(host, redirect_sites[i]) != NULL) {
            return TRUE;
        }
    }
    return FALSE;
}

// 检查用户 IP 是否在黑名单中
BOOL is_user_blacklisted(char* ip) {
    for (int i = 0; i < sizeof(user_blacklist) / sizeof(user_blacklist[0]); i++) {
        if (strcmp(ip, user_blacklist[i]) == 0) {
            return TRUE;
        }
    }
    return FALSE;
}
