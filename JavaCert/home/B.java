import java.io.*;
class A {
 public void process() { System.out.print("A,"); }
}
 class B extends A {
 public void process() throws FileNotFoundException {
 super.process();
 System.out.print("B,");
 throw new FileNotFoundException();
 }
 public static void main(String[] args) {
 try { new B().process(); }
 catch (FileNotFoundException e) { System.out.println("Exception"); }}
}
