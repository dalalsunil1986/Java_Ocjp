abstract class Car
{
 private double price;
 private String model;
 public abstract run();
 public abstract stop();
 public showPrice(double price)
 {
  System.out.println(price);
 }
}
class AbstractExample
{
 public static void main(String[] args)
 {
  AbstractExample obj=new AbstractExample();
  obj.showPrice(4000);
 }
 void run()
 {
  System.out.println("I am run");
 }
 void stop()
 {
  System.out.println("I am stop");
 }
}