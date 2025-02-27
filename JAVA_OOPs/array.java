import java.util.*;

public class array {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.print("enter size of the array");
        int a=sc.nextInt();
        int []array1=new int[a];
System.out.println("enter the elemnts");
        for(int i=0;i<a;i++){
            array1[i]=sc.nextInt();
        }
System.out.println("the array u entered");
        for(int i=0;i<a;i++){

            System.out.print(array1[i]+" ");
            
        }
        int len = array1.length;
       System.out.println("array length is "+ len);
    
    }
    
}
