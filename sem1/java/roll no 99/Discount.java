import java.util.Scanner;
class Discount{
 public static void main(String args[])
 {
	int price,total,quntity,i,j,k;
  System.out.println("enter the price and quntity");
  Scanner sc=new Scanner(System.in);
  price=sc.nextInt();
  
  quntity=sc.nextInt();
  total=price*quntity;
  System.out.println("total value of the you shopping="+ total);
  for(i=1;i<total;i++)
  {
    
    System.out.println(" ");
   { for(j=1;j<i;j++)
    
   System.out.print("-");
  { for(k=1;k<j;k++)
   System.out.print("pratik");

}    
    }

}
}
}