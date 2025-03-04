public class test {
    int a,b;
    public test(int x,int y){
        this.a=x;
        this.b=y;
    }
    public  boolean equals(test ob){
        if(ob.a==a & ob.b==b)
        return true;
        return false;
    }
    public static void main(String args[]){
        test ob1=new test(5, 2);
        test ob2=new test(5, 2);
        test ob3=new test(10, 20);
        System.out.println("ob1==ob2 "+ob1.equals(ob2));
        System.out.println("ob1==ob3 "+ob1.equals(ob3));
        System.out.println("ob2==ob3 "+ob2.equals(ob3));
    } 
}
