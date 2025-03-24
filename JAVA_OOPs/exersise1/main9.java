import java.util.*;

public class main9 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter the number of strings");
        int n=sc.nextInt();
        sc.nextLine();
        String[] arr=new String[n];
        System.out.println("Enter the string and enter:");
        for(int i=0;i<n;i++){
            arr[i]=sc.nextLine();
        }
        //write a compareTo
        for(int i=0;i<n;i++){
            for(int j=0;j<n-1;j++){
                if(arr[i].compareTo(arr[i+1])>0){
                    String temp=arr[i];
                    arr[i]=arr[j];
                    arr[j]=temp;
                }
            }
        }
        System.out.println("Sorted string");
        for(int i=0;i<n;i++){
            System.out.println(arr[i]);
        }
    }
}




//write a java prog to sort strings using compateTo function.