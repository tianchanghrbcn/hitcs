import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

public class SRClient {
    //共用端口号
    private final int port = 80;
    //发送的数据的数量
    private final int num = 10;
    private DatagramSocket datagramSocket = new DatagramSocket();
    private DatagramPacket datagramPacket;
    private InetAddress inetAddress;
    private Model model;
    private static SRClient srClient;
    private Timer timer;
    private int nextSeq = 1;
    private int base = 1;
    private boolean[] mark;
    private int N = 3;


    public SRClient() throws Exception {
        mark = new boolean[num+1];
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

            String fromServer = new String(bytes, 0, bytes.length);
            int ack = Integer.parseInt(fromServer.substring(fromServer.indexOf("ack:")+4).trim());
            mark[ack] = true;
            System.out.println("从服务器获得的数据:" + fromServer);
            System.out.println("\n");

            //收到base的ACK
            if(base == ack && base != num){
                base++;
                int flag=0;
                //乱序之后，把base值移到最远的位置
                for(int i = base; i < nextSeq;i++){
                    if(mark[i] == true && flag == 0){
                        base = i + 1;
                    }
                    else {
                        flag = 1;
                    }
                }
            }
            if(base == num+1){
                timer.interrupt();
                System.out.println("本次传输结束");
                break;
            }
            if(base == nextSeq){
                //停止计时器
                model.setTime(0);
            }else {
                //开始计时器
                model.setTime(3);
            }
        }
    }

    public static void main(String[] args) throws Exception {
        srClient = new SRClient();
    }

    /**
     * 向服务器发送数据
     *
     * @throws Exception
     */
    private void sendData() throws Exception {
        inetAddress = InetAddress.getLocalHost();
        while (nextSeq < base + N && nextSeq <= num) {
            int p = 3;
            if(nextSeq % p == 0) {
                System.out.println("传输失败:"+nextSeq);
                nextSeq++;
                continue;
            }

            String clientData = "客户端发送的数据编号:" + nextSeq;
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
     * 超时数据重传,仅重传base值
     */
    public void timeOut() throws Exception {
        String clientData = "客户端重新发送的数据编号:" + base;
        System.out.println("向服务器重新发送的数据:" + base);
        byte[] data = clientData.getBytes();
        DatagramPacket datagramPacket = new DatagramPacket(data, data.length, inetAddress, port);
        datagramSocket.send(datagramPacket);
    }

    /**
     * 向服务器发送结束信号
     */

}