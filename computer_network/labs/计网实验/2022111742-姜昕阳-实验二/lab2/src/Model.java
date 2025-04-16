
/**
 * 保证线程安全性
 */
public class Model {

    public volatile int time;
    public volatile int next;
    public  synchronized int getTime() {
        return time;
    }
    public  synchronized int getnext() {
        return next;
    }
    public synchronized void setTime(int time) {
        this.time = time;
    }
    public synchronized void setnext(int next) {
        this.next = next;
    }
}