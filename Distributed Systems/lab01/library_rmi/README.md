# Java RMI 在线图书馆系统

> 适用环境：JDK 17+

## 目录结构
```
library_rmi/
├── src/
│   ├── common/
│   │   ├── Book.java
│   │   └── LibraryService.java
│   ├── server/
│   │   ├── LibraryServiceImpl.java
│   │   └── LibraryServer.java
│   └── client/
│       └── LibraryClient.java
└── README.md
```

## 编译

```bash
cd library_rmi
mkdir -p out
find src -name "*.java" > sources.txt
javac -encoding UTF-8 -d out @sources.txt
```

> Windows PowerShell 下可使用  
> `Get-ChildItem -Recurse -Filter *.java | Select-Object -ExpandProperty FullName > sources.txt`

## 运行

1. **启动服务器**

   ```bash
   java -cp out server.LibraryServer
   ```

2. **开启一个或多个客户端**

   另开终端窗口：

   ```bash
   java -cp out client.LibraryClient
   ```

   若服务器在其他机器，可加主机名 / IP：

   ```bash
   java -cp out client.LibraryClient 192.168.1.100
   ```

## 说明

- RMI 注册表通过 `LocateRegistry.createRegistry(1099)` 在代码中直接启动，不需要手动运行 `rmiregistry`。
- Book 类实现 `Serializable`，确保通过 RMI 传输时对象可序列化。
- 不需要 `rmic` 生成桩代码（自 Java 5 起已弃用，运行时动态生成代理）。
