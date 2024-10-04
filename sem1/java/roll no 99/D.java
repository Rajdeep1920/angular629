class A
  {
    void nameZ(){
  System.out.println("hello i learn from DYP");
}
  }
class B extends A 
  {
   void nameE()
{   System.out.println("i am live from kagal");
}

  }

class C extends B
  {
    void nameR()
{   System.out.println("my name is RAJDEEP");

}

  }


class D
{
public static void main(String args[])
  
{
 C obj=new C();
 obj.nameR();
 obj.nameE();
 obj.nameZ();
}
}