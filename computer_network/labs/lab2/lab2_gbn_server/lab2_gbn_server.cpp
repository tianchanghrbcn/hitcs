#include <stdlib.h>
#include <time.h>
#include <WinSock2.h>
#include <windows.h>
#include <fstream>
#include <sstream>
#include <cstdio>

#pragma comment(lib,"ws2_32.lib")
#pragma warning(disable:4996)

#define SERVER_PORT 12340
#define SERVER_IP "0.0.0.0"

using namespace std;

const int BUFFER_LENGTH = 1027;
const int SEND_WIND_SIZE = 10;
const int SEQ_SIZE = 20;

BOOL ack[SEQ_SIZE];
int curSeq;
int curAck;
int totalSeq;
int totalPacket;
int waitSeq;

void getCurTime(char* ptime) {
    char buffer[128];
    memset(buffer, 0, sizeof(buffer));
    SYSTEMTIME sys;
    GetLocalTime(&sys);
    sprintf_s(buffer, "%4d/%02d/%02d %02d:%02d:%02d",
        sys.wYear,
        sys.wMonth,
        sys.wDay,
        sys.wHour,
        sys.wMinute,
        sys.wSecond);
    strcpy_s(ptime, sizeof(buffer), buffer);
}

bool seqIsAvailable() {
    int step;
    step = curSeq - curAck;
    step = step >= 0 ? step : step + SEQ_SIZE;
    if (step >= SEND_WIND_SIZE) {
        return false;
    }
    if (ack[curSeq]) {
        return true;
    }
    return false;
}

void timeoutHandler() {
    printf("Timer out error.\n");
    int index;
    for (int i = 0; i < (curSeq - curAck + SEQ_SIZE) % SEQ_SIZE; ++i) {
        index = (i + curAck) % SEQ_SIZE;
        ack[index] = TRUE;
    }
    totalSeq = totalSeq - ((curSeq - curAck + SEQ_SIZE) % SEQ_SIZE);
    curSeq = curAck;
}

void ackHandler(char c) {
    unsigned char index = (unsigned char)c - 1;
    printf("Recv a ack of %d\n", index);
    if (curAck <= index) {
        for (int i = curAck; i <= index; ++i) {
            ack[i] = TRUE;
        }
        curAck = (index + 1) % SEQ_SIZE;
    }
    else {
        for (int i = curAck; i < SEQ_SIZE; ++i) {
            ack[i] = TRUE;
        }
        for (int i = 0; i <= index; ++i) {
            ack[i] = TRUE;
        }
        curAck = index + 1;
    }
}

BOOL lossInLossRatio(float lossRatio) {
    int lossBound = (int)(lossRatio * 100);
    int r = rand() % 100;
    if (r < lossBound) {
        return TRUE;
    }
    return FALSE;
}

int main()
{
    WORD wVersionRequested;
    WSADATA wsaData;
    int err;
    wVersionRequested = MAKEWORD(2, 2);
    err = WSAStartup(wVersionRequested, &wsaData);
    if (err != 0) {
        printf("WSAStartup failed with error: %d\n", err);
        return -1;
    }
    if (LOBYTE(wsaData.wVersion) != 2 || HIBYTE(wsaData.wVersion) != 2) {
        printf("Could not find a usable version of Winsock.dll\n");
        WSACleanup();
    }
    else {
        printf("The Winsock 2.2 dll was found okay\n");
    }

    SOCKET sockServer = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    int iMode;
    SOCKADDR_IN addrServer;
    addrServer.sin_addr.S_un.S_addr = htonl(INADDR_ANY);
    addrServer.sin_family = AF_INET;
    addrServer.sin_port = htons(SERVER_PORT);

    err = bind(sockServer, (SOCKADDR*)&addrServer, sizeof(SOCKADDR));
    if (err) {
        err = GetLastError();
        printf("Could not bind the port %d for socket. Error code is %d\n", SERVER_PORT, err);
        WSACleanup();
        return -1;
    }

    SOCKADDR_IN addrClient;
    int length = sizeof(SOCKADDR);
    char buffer[BUFFER_LENGTH];
    ZeroMemory(buffer, sizeof(buffer));
    int recvSize;
    int loct = 0;
    int waitCount = 0;
    float packetLossRatio = 0.2;
    float ackLossRatio = 0.2;
    srand((unsigned)time(NULL));

    while (true) {
        recvSize = recvfrom(sockServer, buffer, BUFFER_LENGTH, 0, ((SOCKADDR*)&addrClient), &length);
        printf("recv from client: %s\n", buffer);
        if (strcmp(buffer, "-time") == 0) {
            getCurTime(buffer);
        }
        else if (strcmp(buffer, "-quit") == 0) {
            strcpy_s(buffer, strlen("Good bye!") + 1, "Good bye!");
        }
        else {
            char filename[100];
            char operation[10];
            char cmd[10];
            int ret;
            unsigned char u_code;
            unsigned short seq;
            unsigned short recvSeq;
            unsigned short waitSeq;
            unsigned short recvPacket;
            int sendack = 0;
            int stage = 0;
            ret = sscanf(buffer, "%s %f %f %s %s", &cmd, &packetLossRatio, &ackLossRatio, &operation, &filename);
            if (!strcmp(cmd, "gbn")) {
                if (!strcmp(operation, "download")) {
                    iMode = 1;
                    int flg = 1;
                    ioctlsocket(sockServer, FIONBIO, (u_long FAR*) & iMode);
                    std::ifstream fin;
                    fin.open(filename, ios_base::in);
                    if (!fin.is_open()) {
                        printf("Unable to open file");
                        iMode = 0;
                        ioctlsocket(sockServer, FIONBIO, (u_long FAR*) & iMode);
                        continue;
                    }

                    char buff[1024] = { 0 };
                    char data[1024 * 113];
                    loct = 0;
                    while (fin.getline(buff, sizeof(buff))) {
                        if (buff[0] == '0') break;
                        memcpy(data + 1024 * loct, buff, 1024);
                        ++loct;
                    }
                    fin.close();
                    totalPacket = loct;
                    ZeroMemory(buffer, sizeof(buffer));
                    int recvSize;
                    waitCount = 0;
                    printf("Begain to test GBN protocol,please don't abort the process\n");
                    int stage = 0;
                    bool runFlag = true;

                    while (runFlag) {
                        switch (stage) {
                        case 0:
                            buffer[0] = 205;
                            sendto(sockServer, buffer, strlen(buffer) + 1, 0, (SOCKADDR*)&addrClient, sizeof(SOCKADDR));
                            Sleep(100);
                            stage = 1;
                            break;
                        case 1:
                            recvSize = recvfrom(sockServer, buffer, BUFFER_LENGTH, 0, ((SOCKADDR*)&addrClient), &length);
                            if (recvSize < 0) {
                                ++waitCount;
                                if (waitCount > 20) {
                                    runFlag = false;
                                    printf("Timeout error\n");
                                    break;
                                }
                                Sleep(500);
                                continue;
                            }
                            else {
                                if ((unsigned char)buffer[0] == 200) {
                                    printf("Begin a file transfer\n");
                                    printf("File size is %dB, each packet is 1024B and packet total num is % d\n", totalPacket * 1024, totalPacket);
                                    curSeq = 0;
                                    curAck = 0;
                                    totalSeq = 0;
                                    waitCount = 0;
                                    stage = 2;
                                    for (int i = 0; i < SEQ_SIZE; ++i) {
                                        ack[i] = TRUE;
                                    }
                                }
                            }
                            break;
                        case 2:
                            if (seqIsAvailable() && totalSeq < loct) {
                                buffer[0] = curSeq + 1;
                                if (totalSeq == loct - 1) buffer[1] = '0';
                                else buffer[1] = '1';
                                ack[curSeq] = FALSE;
                                memcpy(&buffer[2], data + 1024 * totalSeq, 1024);
                                printf("send a packet with a seq of %d\n", curSeq);
                                sendto(sockServer, buffer, BUFFER_LENGTH, 0, (SOCKADDR*)&addrClient, sizeof(SOCKADDR));
                                ++curSeq;
                                curSeq %= SEQ_SIZE;
                                ++totalSeq;
                                Sleep(500);
                            }
                            recvSize = recvfrom(sockServer, buffer, BUFFER_LENGTH, 0, ((SOCKADDR*)&addrClient), &length);
                            if (recvSize < 0) {
                                waitCount++;
                                if (waitCount > 20) {
                                    timeoutHandler();
                                    waitCount = 0;
                                }
                            }
                            else {
                                if (buffer[1] == '0')
                                {
                                    flg = 0;
                                    break;
                                }
                                ackHandler(buffer[0]);
                                waitCount = 0;
                            }
                            Sleep(500);
                            break;
                        }
                        if (flg == 0) break;
                    }
                    if (flg == 0) {
                        printf("File transfer complete\n");
                        iMode = 0;
                        ioctlsocket(sockServer, FIONBIO, (u_long FAR*) & iMode);
                        ZeroMemory(buffer, sizeof(buffer));
                        continue;
                    }
                }
                else if (!strcmp(operation, "upload")) {
                    char data[1024 * 113];
                    loct = 0;
                    int flg = 1;
                    BOOL b;
                    while (true) {
                        recvfrom(sockServer, buffer, BUFFER_LENGTH, 0, (SOCKADDR*)&addrClient, &length);
                        switch (stage) {
                        case 0:
                            u_code = (unsigned char)buffer[0];
                            if ((unsigned char)buffer[0] == 205) {
                                printf("Ready for file transmission\n");
                                buffer[0] = 200;
                                buffer[1] = '\0';
                                sendto(sockServer, buffer, 2, 0, (SOCKADDR*)&addrClient, sizeof(SOCKADDR));
                                stage = 1;
                                recvSeq = 0;
                                waitSeq = 1;
                                loct = 0;
                            }
                            break;
                        case 1:
                            seq = (unsigned short)buffer[0];
                            b = lossInLossRatio(packetLossRatio);
                            if (b) {
                                printf("The packet with a seq of %d loss\n", seq - 1);
                                continue;
                            }
                            printf("recv a packet with a seq of %d\n", seq - 1);
                            if (!(waitSeq - seq)) {
                                if (buffer[1] == '0') flg = 0;
                                memcpy(data + 1024 * loct, buffer + 2, 1024);
                                ++loct;
                                ++waitSeq;
                                if (waitSeq == 21) {
                                    waitSeq = 1;
                                }
                                buffer[0] = seq;
                                recvSeq = seq;
                                recvPacket = (unsigned short)buffer[1];
                                buffer[2] = '\0';
                            }
                            else {
                                if (!recvSeq) {
                                    continue;
                                }
                                buffer[0] = recvSeq;
                                buffer[1] = recvPacket;
                                buffer[2] = '\0';
                            }
                            b = lossInLossRatio(ackLossRatio);
                            if (b) {
                                printf("The ack of %d loss\n", (unsigned char)buffer[0] - 1);
                                continue;
                            }
                            sendto(sockServer, buffer, 3, 0, (SOCKADDR*)&addrClient, sizeof(SOCKADDR));
                            printf("send a ack of %d\n", (unsigned char)buffer[0] - 1);
                            break;
                        }
                        if (flg == 0) {
                            printf("File transfer complete\n");
                            break;
                        }
                        Sleep(500);
                    }
                    ofstream ofs;
                    ofs.open(filename, ios::out);
                    char buff[1300];
                    printf("%d", loct);
                    for (int i = 0; i < loct; ++i) {
                        memcpy(buff, data + 1024 * i, 1024);
                        ofs << buff << endl;
                    }
                    ofs.close();
                    if (flg == 0) {
                        ZeroMemory(buffer, sizeof(buffer));
                        continue;
                    }
                }
            }
        }
        sendto(sockServer, buffer, strlen(buffer) + 1, 0, (SOCKADDR*)&addrClient, sizeof(SOCKADDR));
        Sleep(500);
    }
    closesocket(sockServer);
    WSACleanup();
    return 0;
}
