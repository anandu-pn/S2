//creating class variables static
class A{
    static int c=0;

    static void count(){
        c++;
        
    }

    static void dis(){
        System.out.println(c);
        
    }
    
    
}
public class Mai{
    public static void main(String[] args) {
         A.count();
         A.dis();
        
    }
}