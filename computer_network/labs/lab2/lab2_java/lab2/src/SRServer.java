import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.util.ArrayDeque;
import java.util.Queue;

public class SRServer {
    //共用端口号
    private final int port = 80;
    //窗口大小
    private final int N = 3;
    private DatagramSocket datagramSocket;
    private DatagramPacket datagramPacket;
    private int exceptedSeq = 1;
    //缓存队列
    private Queue<Integer> cache = new ArrayDeque<>();

    public SRServer() throws IOException {
        try {
            datagramSocket = new DatagramSocket(port);
            while (true) {
                byte[] receivedData = new byte[4096];
                datagramPacket = new DatagramPacket(receivedData, receivedData.length);
                datagramSocket.receive(datagramPacket);

                //收到的数据
                String received = new String(receivedData, 0, receivedData.length);//offset是初始偏移量
                System.out.println(received);
                int ack = Integer.parseInt(received.substring(received.indexOf("编号:") + 3).trim());

                sendAck(ack);

                //收到了预期的数据
                if (ack == exceptedSeq) {
                    System.out.println("服务端期待的数据编号:" + exceptedSeq);
                    //期待值加1
                    exceptedSeq++;
                    //滑动窗口到最大值
                    while( cache.peek() != null && cache.peek()== exceptedSeq){
                        System.out.println("从服务器端缓存中读出数据:"+cache.element());
                        cache.poll();
                        exceptedSeq++;
                    }

                    System.out.println('\n');
                } else {
                    System.out.println("服务端期待的数据编号:" + exceptedSeq);
                    System.out.println("+++++++++++++++++++++未收到预期数据+++++++++++++++++++++");
                    cache.add(ack);
                    System.out.println('\n');
                }

            }
        }catch(SocketException e){
            e.printStackTrace();
        }
    }

    public static final void main(String[] args) throws IOException {
        new SRServer();
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
}
