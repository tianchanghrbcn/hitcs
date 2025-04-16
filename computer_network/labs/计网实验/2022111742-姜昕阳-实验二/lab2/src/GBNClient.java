
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

/**
 * 客户端
 */
public class GBNClient {
    private final int port = 80;
    private DatagramSocket datagramSocket = new DatagramSocket();
    private DatagramPacket datagramPacket;
    private InetAddress inetAddress;
    private Model model;
    private static GBNClient gbnClient;
    private Timer timer;
    private int expectedSeq = 1;
    private int nextSeq = 1;
    private int base = 1;
    private int N = 5;


    public GBNClient() throws Exception {
        model = new Model();
        timer = new Timer(this,model);
        model.setTime(0);
        timer.start();
        while(true){
            //向服务器端发送数据
            sendData();

            //从服务器端接受ACK
            byte[] bytes = new byte[4096];
            datagramPacket = new DatagramPacket(bytes, bytes.length);
            datagramSocket.receive(datagramPacket);
            String received = new String(bytes, 0, bytes.length);
            if(received.contains("ack"))
            {
                int ack = Integer.parseInt(received.substring(received.indexOf("ack:")+4).trim());
                base = ack+1;
                if(base == nextSeq){
                    //停止计时器
                    model.setTime(0);
                }else {
                    //开始计时器
                    model.setTime(3);
                }
                System.out.println("从服务器获得确认:" + received);
                if(ack == 11)
                {
                    System.out.println("传输结束");
                    model.setTime(0);
                    timer.interrupt();
                    break;
                }
            }
            //收到了预期的数据
            else if (Integer.parseInt(received.substring(4, 5).trim()) == expectedSeq) {
                //发送ack
                String filename="F:/Net/lab2/file"+expectedSeq+".txt";
                File file=new File(filename);
                file.createNewFile();
                FileWriter writer = new FileWriter(file);
                writer.write(received);
                writer.flush();
                sendAck(expectedSeq);
                //期待值加1
                expectedSeq++;
                System.out.println("从服务器获得数据:" + received);
            } else {
                System.out.println("+++++++++++++未收到预期数据:"+expectedSeq+"+++++++++++++");
                //仍发送之前的ack
                sendAck(expectedSeq - 1);
            }
        }

    }

    public static void main(String[] args) throws Exception {
        gbnClient = new GBNClient();
    }

    /**
     * 向服务器发送数据
     *
     * @throws Exception
     */

    public void sendAck(int ack) throws IOException {
        String response = " ack:"+ack;
        byte[] responseData = response.getBytes();
        InetAddress responseAddress = datagramPacket.getAddress();
        int responsePort = datagramPacket.getPort();
        datagramPacket = new DatagramPacket(responseData,responseData.length,responseAddress,responsePort);
        datagramSocket.send(datagramPacket);
    }

    private void sendData() throws Exception {
        inetAddress = InetAddress.getLocalHost();
        int p = 3;  //丢包概率
        while (nextSeq < base + N && nextSeq <= 11) {
            //不发编号模3为0的数据，模拟数据丢失
            if(nextSeq % p == 0) {
                System.out.println("传输丢失:"+nextSeq);
                nextSeq++;
                continue;
            }

            String clientData = "/客户端发送的数据编号:" + nextSeq;
            System.out.println("向服务器发送的数据:"+nextSeq);

            byte[] data = clientData.getBytes();
            DatagramPacket datagramPacket = new DatagramPacket(data, data.length, inetAddress, port);
            datagramSocket.send(datagramPacket);

            if(nextSeq == base){
                //开始计时
                model.setTime(3);
            }
            nextSeq++;
        }

    }

    /**
     * 超时数据重传
     */
    public void timeOut() throws Exception {
        for(int i = base;i < nextSeq;i++){
            String clientData = "/客户端重新发送的数据编号:" + i;
            System.out.println("向服务器重新发送的数据:" + i);
            byte[] data = clientData.getBytes();
            DatagramPacket datagramPacket = new DatagramPacket(data, data.length, inetAddress, port);
            datagramSocket.send(datagramPacket);
        }
    }
    //等待超时

}
