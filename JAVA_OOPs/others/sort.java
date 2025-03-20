import java.util.*;
public class sort {
    public static void main(String args[]){
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter the size of array:");
        int n=sc.nextInt();
        arrr arr1=new arrr();
        arr1.insert(n);
        arr1.view(n);
        System.out.print("The sorted");
        arr1.sort();
        arr1.view(n);
        sc.close();
    }
}
class arrr{
    int n=0;
    int []array;
    public void insert(int n1){
       Scanner sc1=new Scanner(System.in);
       n=n1;
       array=new int[n];
       for(int i=0;i<n1;i++){
            System.out.print("Enter the element "+i+": ");
            array[i]=sc1.nextInt();
       }
       sc1.close();
    }
    public void view(int n){
        System.out.println("\nThe array is ");
        for(int i=0;i<n;i++){
            System.out.print(array[i]+" ");
       }
    }
    public void sort(){
        for(int i=0;i<n-1;i++){
            for(int j=0;j<n-1;j++){
                if(array[j]>array[j+1]){
                    int k=array[j];
                    array[j]=array[j+1];
                    array[j+1]=k;
                }
            }
        }
    }
}
