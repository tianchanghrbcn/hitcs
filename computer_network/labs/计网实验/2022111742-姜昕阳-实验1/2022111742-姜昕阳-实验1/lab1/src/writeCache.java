import java.io.*;
import java.net.Socket;
import java.util.Scanner;


public class writeCache {
    public writeCache(){
    }
    public static void writeInCache(String type, String destHost, String URL,
                                    int destPort, int indexBk, OutputStream output, StringBuilder header){
        try{
            if (destHost != null && !destHost.equals("")) {
                Socket proxy = new Socket(destHost, destPort);
                OutputStream proxyOut = proxy.getOutputStream();
                InputStream proxyIn = proxy.getInputStream();
                if (type.equals("GET")) {
                    boolean ifHasFile = false;
                    System.out.println(destHost);
                    String dir = "C:\\Users\\27186\\IdeaProjects\\untitled12\\src\\cache\\" + destHost + indexBk + ".txt";
                    File file = new File(dir);
                    File folder = new File("C:/Users/27186/IdeaProjects/untitled12/src/cache");
                    for (File file0 : folder.listFiles()) {
                        BufferedReader fileReader = new BufferedReader(new InputStreamReader(new FileInputStream(file0)));
                        if (fileReader.readLine().equals(URL)) {
                            System.out.println(URL + "-->	存在缓存");
                            ifHasFile = true;
                            file = file0;
                            break;
                        }
                    }

                    if (ifHasFile) {
                        Scanner sc = new Scanner (new FileReader(file));
                        String line, date = null;
                        while(sc.hasNextLine()) {
                            line = sc.nextLine();
                            if (line.contains("Date")) {
                                date = line.substring(6);
                            }
                        }
                        StringBuffer ifGetReqBuffer = new StringBuffer();
                        ifGetReqBuffer.append("GET " + URL + " HTTP/1.1\r\n");
                        ifGetReqBuffer.append("Host: " + destHost + ":" + destPort + "\r\n");
                        ifGetReqBuffer.append("If-modified-since: " + date + "\r\n");
                        ifGetReqBuffer.append("\r\n");
                        String ifGetReq = ifGetReqBuffer.toString();
                        proxyOut.write(ifGetReq.getBytes());
                        proxyOut.flush();
                        byte[] tempBytes = new byte[30];
                        int len = proxyIn.read(tempBytes);
                        String res = new String(tempBytes, 0, len);
                        if (res.contains("304")) {
                            System.out.println("缓存内容未更新，直接使用");
                            BufferedInputStream inputStream = new BufferedInputStream(new FileInputStream(file));
                            String pad = URL + "\r\n";
                            inputStream.read(pad.getBytes());
                            int length = -1;
                            byte[] bytes = new byte[1024];
                            proxy.shutdownOutput();
                            while ((length=inputStream.read(bytes)) != -1){
                                output.write(bytes, 0, length);
                            }
                            output.flush();
                        } else {
                            System.out.println("缓存内容更新，重新缓存并使用");
                            file.delete();
                            file.createNewFile();
                            FileOutputStream outputStream = new FileOutputStream(file);
                            String pad = URL + "\r\n";
                            outputStream.write(pad.getBytes("utf-8"));//将URL作为缓存文件的第一行
                            outputStream.write(tempBytes, 0, len);
                            output.write(tempBytes, 0, len);
                            proxy.shutdownOutput();
                            BufferedInputStream inputStream = new BufferedInputStream(proxyIn);
                            byte[] buf = new byte[1024];
                            int size = 0;
                            while (( size = inputStream.read(buf)) != -1) {
                                output.write(buf,0,size);
                                outputStream.write(buf,0,size);
                            }
                            output.flush();
                            outputStream.flush();
                        }
                    }
                    else {
                        proxyOut.write(header.toString().getBytes("utf-8"));
                        proxyOut.flush();
                        proxy.shutdownOutput();
                        //如果缓存不存在，则将服务器传来的数据传给客户端并且缓存
                        System.out.println(URL + "-->	缓存不存在");
                        file.createNewFile();
                        FileOutputStream outputStream = new FileOutputStream(file);
                        String pad = URL + "\r\n";
                        outputStream.write(pad.getBytes("utf-8"));//将URL作为缓存文件的第一行
                        BufferedInputStream inputStream = new BufferedInputStream(proxyIn);
                        byte[] buf = new byte[1];
                        int size = 0;
                        while (( size = inputStream.read(buf)) != -1) {
                            output.write(buf, 0, size);
                            outputStream.write(buf, 0, size);
                        }

                        output.flush();
                        outputStream.flush();
                    }
                }
            } else {
                Socket proxy = new Socket(destHost, destPort);
                OutputStream proxyOut = proxy.getOutputStream();
                InputStream proxyIn = proxy.getInputStream();
                proxyOut.write(header.toString().getBytes());
                proxyOut.flush();
                proxy.shutdownOutput();
                BufferedInputStream inputStream = new BufferedInputStream(proxyIn);
                byte[] buf = new byte[1];
                int size = 0;
                while (( size = inputStream.read(buf)) != -1) {
                    output.write(buf, 0, size);
                }
                output.flush();
            }
        } catch (IOException ioe){
            ioe.printStackTrace();
            System.exit(-1);
        }
    }
}
