
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;

/**
 * 服务器端
 */
public class GBNServer {
    private final int port = 80;
    private DatagramSocket datagramSocket = new DatagramSocket();
    private DatagramPacket datagramPacket;
    private int exceptedSeq = 1;
    private Model model;
    private Timer timer;
    private InetAddress inetAddress;
    private int nextSeq = 1;
    private int base = 1;
    private int N = 3;
    private static GBNServer gbnServer;

    public GBNServer() throws Exception {
        model = new Model();
        timer = new Timer(this,model);
        model.setTime(0);
        timer.start();
        try {
            datagramSocket = new DatagramSocket(port);
            while (true) {
                byte[] receivedData = new byte[4096];
                datagramPacket = new DatagramPacket(receivedData, receivedData.length);
                datagramSocket.receive(datagramPacket);
                sendData();
                //收到的数据
                String received = new String(receivedData, 0, receivedData.length);//offset是初始偏移量
                if(received.contains("ack"))
                {
                    int ack = Integer.parseInt(received.substring(received.indexOf("ack:")+4).trim());
                    base = ack+1;
                    if(base == nextSeq){
                        //停止计时器
                        model.setTime(0);
                    }else {
                        //开始计时器
                        model.setTime(1);
                    }
                    System.out.println("从客户端获得的数据:" + received);
                }
                //收到了预期的数据
                else if (Integer.parseInt(received.substring(received.indexOf("编号:") + 3).trim()) == exceptedSeq) {
                    //发送ack
                    sendAck(exceptedSeq);
                    System.out.println("服务端期待的数据编号:" + exceptedSeq);
                    System.out.println("从客户端获得的数据:" + received);

                    //期待值加1
                    exceptedSeq++;

                } else {
                    System.out.println("+++++++++++++未收到预期数据:"+exceptedSeq+"+++++++++++++");
                    //仍发送之前的ack
                    sendAck(exceptedSeq - 1);
                }
            }
        }catch(SocketException e){
            e.printStackTrace();
        }
    }

    public static final void main(String[] args) throws Exception {
        new GBNServer();
    }

    //向客户端发送ack
    public void sendAck(int ack) throws IOException {
        String response = " ack:"+ack;
        byte[] responseData = response.getBytes();
        InetAddress responseAddress = datagramPacket.getAddress();
        int responsePort = datagramPacket.getPort();
        datagramPacket = new DatagramPacket(responseData,responseData.length,responseAddress,responsePort);
        datagramSocket.send(datagramPacket);
    }
    private void sendData() throws Exception {


        while (nextSeq < base + N && nextSeq <= 5) {
            String filename="F:/Net/lab2/file"+nextSeq+".txt";
            File file=new File(filename);
            FileInputStream fis = new FileInputStream(file);
            byte[] bytes = new byte[512];
            fis.read(bytes, 0, bytes.length);
            fis.close();
            int p=3;
            //不发编号模p为0的数据，模拟数据丢失
            

//            String clientData = "服务器发送的数据编号:" + nextSeq;
            System.out.println("向客户端发送的文件编号:"+nextSeq);

//            byte[] data = clientData.getBytes();
            int resport = datagramPacket.getPort();
            InetAddress resAddress = datagramPacket.getAddress();
            DatagramPacket datagramPacket = new DatagramPacket(bytes, bytes.length, resAddress, resport);
            datagramSocket.send(datagramPacket);

            if(nextSeq == base){
                //开始计时
                model.setTime(1);
            }
            nextSeq++;
        }
    }
    public void timeOut() throws Exception {
        for(int i = base;i < nextSeq;i++){
            String filename="F:/Net/lab2/file"+i+".txt";
            File file=new File(filename);
            FileInputStream fis = new FileInputStream(file);
            byte[] bytes = new byte[512];
            fis.read(bytes, 0, bytes.length);
            fis.close();
            int resport = datagramPacket.getPort();
            InetAddress resAddress = datagramPacket.getAddress();
            DatagramPacket datagramPacket = new DatagramPacket(bytes, bytes.length, resAddress, resport);
            datagramSocket.send(datagramPacket);
            System.out.println("向客户端重新发送的文件编号:"+i);
        }
    }
    //等待超时
}