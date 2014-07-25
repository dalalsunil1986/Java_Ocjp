public class Threads3 implements Runnable {
 public void run() {
 System.out.print("running");
 System.out.print("\n");
 }
 public static void main(String[] args) {
 Thread t = new Thread(new Threads3());
 t.run();
 t.run();
 t.start();
  
 }
 }
