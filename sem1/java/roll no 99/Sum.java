import java.util.Scanner;
class Sum
{
  public static void main(String args[])
   {
   int a,b,c,sum;
   double avg;
    System.out.println("enter the a nubmer");
    Scanner obj=new Scanner(System.in);
    a=obj.nextInt();
     
    System.out.println("enter the b number");
     b=obj.nextInt();
    System.out.println("enter the c number");
    c=obj.nextInt();
     sum=a+b+c;
   System.out.println("addition of three number="+sum);
  avg=sum/3;
   System.out.println("average of the three number="+avg);


  }
}