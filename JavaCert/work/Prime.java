class Prime
{
 public static void main(String[] args)
 { int p=0;

   for(int i=1;i<=20;i++)
  { 
   for(int j=2;j<i;j++)
   {
    if(i%j==0)
    {
      p=0;
      break;
    }
	p=1;
   }
    if(p==1)
    {
     System.out.println(i);
    }
   
  }
 }
}