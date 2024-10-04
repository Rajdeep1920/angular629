import java.util.Scanner;
class Mahesh
{ 
 public static void main(String args[])
   { int mahesh,i,j,k,l;
   double dis;
  System.out.println("mahesh is a cool boy");
   System.out.println("enter mahesh the rate ");
   Scanner sc=new Scanner(System.in);
   mahesh=sc.nextInt();    
    System.out.println("mahesh is rate="+mahesh);
    if (mahesh>1000)
    { dis=mahesh*0.90;
System.out.println("total pay to mahesh="+dis);

    }
else
   {
  dis=mahesh*0.80;
  System.out.println("total pay to mahesh="+dis);
    }

for( i=0;i<dis;i++)
   {
   System.out.print("_");
     for( j=0;j<i;j++)
      {   System.out.print("_");
    
       }
    System.out.println("i love you mahesh");
}

 for( k=0;k<dis;k--)
    { System.out.print("_");

   for( l=0;l<k;l++)
   {System.out.print("_");
}

System.out.println("i hate you Mahesh");
}
  }
}