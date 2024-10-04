import java.util.Scanner;
class B
 {
   public static void main(String args[])
    {
	int cm,sepm,java,rdbms,os,total;
	float per;
	System.out.println("enter the cm marks");
	Scanner so=new Scanner(System.in);
        cm=so.nextInt();

 	System.out.println("enter the sepm marks");
	sepm=so.nextInt();

	System.out.println("enter the java marks");
 	java=so.nextInt();

	System.out.println("enter the rdbms marks");
	rdbms=so.nextInt();
	
	System.out.println("enter the os marks");
	os=so.nextInt();
    

       total=cm+sepm+java+os+rdbms;
      System.out.println("total marks of exam="+total);

	
	per=total/5;
       System.out.println("total percentage of the exam="+per);


	

    }

}