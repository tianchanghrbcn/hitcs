#include <stdlib.h>
#include <WinSock2.h>
#include <time.h>
#include <stdio.h>
#include <fstream>
#include <sstream>
#include <cstdio>
#pragma comment(lib,"ws2_32.lib")
#pragma warning(disable:4996)
#define SERVER_PORT 12340
#define SERVER_IP "127.0.0.1"

using namespace std;

const int BUFFER_LENGTH = 1027;
const int SEQ_SIZE = 20;
BOOL ack[SEQ_SIZE];
int curSeq;
int curAck;
int totalSeq;
int totalPacket;
int waitSeq;
const int SEND_WIND_SIZE = 10;

void printTips() {
    printf("| gbn + [rate1] + [rate2] + operand  + filename |\n");
}

BOOL lossInLossRatio(float lossRatio) {
    int lossBound = (int)(lossRatio * 100);
    int r = rand() % 100;
    return r < lossBound ? TRUE : FALSE;
}

bool seqIsAvailable() {
    int step;
    step = curSeq - curAck;
    step = step >= 0 ? step : step + SEQ_SIZE;
    if (step >= SEND_WIND_SIZE) {
        return false;
    }
    return ack[curSeq] ? true : false;
}

void timeoutHandler() {
    printf("Timer out error.\n");
    int index;
    for (int i = 0; i < (curSeq - curAck + SEQ_SIZE) % SEQ_SIZE; ++i) {
        index = (i + curAck) % SEQ_SIZE;
        ack[index] = TRUE;
    }
    totalSeq -= ((curSeq - curAck + SEQ_SIZE) % SEQ_SIZE);
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

int main() {
    WORD wVersionRequested;
    WSADATA wsaData;
    int err;
    wVersionRequested = MAKEWORD(2, 2);
    err = WSAStartup(wVersionRequested, &wsaData);
    if (err != 0) {
        printf("WSAStartup failed with error: %d\n", err);
        return 1;
    }
    if (LOBYTE(wsaData.wVersion) != 2 || HIBYTE(wsaData.wVersion) != 2) {
        printf("Could not find a usable version of Winsock.dll\n");
        WSACleanup();
    }
    else {
        printf("The Winsock 2.2 dll was found okay\n");
    }

    SOCKET socketClient = socket(AF_INET, SOCK_DGRAM, 0);
    SOCKADDR_IN addrServer;
    addrServer.sin_addr.S_un.S_addr = inet_addr(SERVER_IP);
    addrServer.sin_family = AF_INET;
    addrServer.sin_port = htons(SERVER_PORT);

    char buffer[BUFFER_LENGTH];
    ZeroMemory(buffer, sizeof(buffer));
    int len = sizeof(SOCKADDR);
    int ret;
    int interval = 1;
    char cmd[128];
    float packetLossRatio = 0.2;
    float ackLossRatio = 0.2;
    char operation[10];
    char filename[100];
    int sendack = 0;
    int iMode = 0;
    int loct = 0;
    int waitCount = 0;

    srand((unsigned)time(NULL));
    while (true) {
        printTips();
        gets_s(buffer);
        ret = sscanf(buffer, "%s %f %f %s %s", &cmd, &packetLossRatio, &ackLossRatio, &operation, &filename);

        if (!strcmp(cmd, "gbn")) {
            printf("%s\n", "Begin GBN protocol, please don't abort the process");
            printf("The loss ratio of packet is %.2f, the loss ratio of ack is %.2f\n", packetLossRatio, ackLossRatio);

            int stage = 0;
            BOOL b;
            unsigned char u_code;
            unsigned short seq;
            unsigned short recvSeq;
            unsigned short waitSeq;
            unsigned short recvPacket;
            sendto(socketClient, buffer, BUFFER_LENGTH, 0, (SOCKADDR*)&addrServer, sizeof(SOCKADDR));

            if (!strcmp(operation, "download")) {
                char data[1024 * 113];
                loct = 0;
                iMode = 0;
                int flg = 1;
                ioctlsocket(socketClient, FIONBIO, (u_long FAR*) & iMode);

                while (true) {
                    recvfrom(socketClient, buffer, BUFFER_LENGTH, 0, (SOCKADDR*)&addrServer, &len);
                    switch (stage) {
                    case 0:
                        u_code = (unsigned char)buffer[0];
                        if ((unsigned char)buffer[0] == 205) {
                            printf("Ready for file transmission\n");
                            buffer[0] = 200;
                            buffer[1] = '\0';
                            sendto(socketClient, buffer, 2, 0, (SOCKADDR*)&addrServer, sizeof(SOCKADDR));
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
                            memcpy(data + 1024 * loct, buffer + 2, 1024);
                            if (buffer[1] == '0') flg = 0;
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
                        sendto(socketClient, buffer, 3, 0, (SOCKADDR*)&addrServer, sizeof(SOCKADDR));
                        printf("send a ack of %d\n", (unsigned char)buffer[0] - 1);
                        break;
                    }
                    if (flg == 0) {
                        printf("File transfer complete\n");
                        break;
                    }
                    Sleep(20);
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
            else if (!strcmp(operation, "upload")) {
                std::ifstream fin;
                fin.open(filename, ios_base::in);
                if (!fin.is_open()) {
                    printf("Unable to open file");
                    continue;
                }
                iMode = 1;
                ioctlsocket(socketClient, FIONBIO, (u_long FAR*) & iMode);
                char buff[1024] = { 0 };
                char data[1024 * 113];
                loct = 0;
                int flg = 1;

                while (fin.getline(buff, sizeof(buff))) {
                    if (buff[0] == '0') break;
                    memcpy(data + 1024 * loct, buff, 1024);
                    ++loct;
                }
                fin.close();
                totalPacket = loct;
                ZeroMemory(buffer, sizeof(buffer));
                int waitCount = 0;
                printf("Begin to test GBN protocol, please don't abort the process\n");
                printf("Shake hands stage\n");
                stage = 0;
                bool runFlag = true;
                int recvSize;
                while (runFlag) {
                    switch (stage) {
                    case 0:
                        buffer[0] = 205;
                        sendto(socketClient, buffer, strlen(buffer) + 1, 0, (SOCKADDR*)&addrServer, sizeof(SOCKADDR));
                        Sleep(100);
                        stage = 1;
                        break;
                    case 1:
                        recvSize = recvfrom(socketClient, buffer, BUFFER_LENGTH, 0, ((SOCKADDR*)&addrServer), &len);
                        if (recvSize < 0) {
                            ++waitCount;
                            if (waitCount > 20) {
                                runFlag = false;
                                printf("Timeout error\n");
                                break;
                            }
                            Sleep(20);
                            continue;
                        }
                        else {
                            if ((unsigned char)buffer[0] == 200) {
                                printf("Begin a file transfer\n");
                                printf("File size is %dB, each packet is 1024B and packet total num is %d\n", totalPacket * 1024, totalPacket);
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
                            sendto(socketClient, buffer, BUFFER_LENGTH, 0, (SOCKADDR*)&addrServer, sizeof(SOCKADDR));
                            ++curSeq;
                            curSeq %= SEQ_SIZE;
                            ++totalSeq;
                            Sleep(20);
                        }
                        recvSize = recvfrom(socketClient, buffer, BUFFER_LENGTH, 0, ((SOCKADDR*)&addrServer), &len);
                        if (recvSize < 0) {
                            waitCount++;
                            if (waitCount > 20) {
                                timeoutHandler();
                                waitCount = 0;
                            }
                        }
                        else {
                            if (buffer[1] == '0') {
                                flg = 0;
                                break;
                            }
                            ackHandler(buffer[0]);
                            waitCount = 0;
                        }
                        Sleep(20);
                        break;
                    }
                    if (flg == 0) break;
                }
                if (flg == 0) {
                    printf("File transfer complete\n");
                    ZeroMemory(buffer, sizeof(buffer));
                    continue;
                }
            }
        }
        sendto(socketClient, buffer, strlen(buffer) + 1, 0, (SOCKADDR*)&addrServer, sizeof(SOCKADDR));
        ret = recvfrom(socketClient, buffer, BUFFER_LENGTH, 0, (SOCKADDR*)&addrServer, &len);
        printf("%s\n", buffer);
        if (!strcmp(buffer, "Good bye!")) {
            break;
        }
    }
    closesocket(socketClient);
    WSACleanup();
    return 0;
}
