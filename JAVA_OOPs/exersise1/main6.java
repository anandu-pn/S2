import java.util.*;
public class main6 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.print("Enter the string to do manipulation: ");
        String st=sc.nextLine();
        operation mani=new operation(st);
        mani.upper();
        System.out.println("Enter the option for operation to perform");
        int op=sc.nextInt();
        switch (op) {
            case 1:
                mani.upper();
                break;

            case 2:
                mani.length();
                break;

            case 3:
                System.out.print("Enter the substring to check: ");
                String substring = sc.nextLine();
                mani.find(substring);
                break;

            case 4:
                System.out.print("Enter the character to find: ");
                String character = sc.nextLine();
                mani.index(character);
                break;

            default:
                System.out.println("Invalid option! Please select a valid operation.");
                break;
        }
        //System.out.println(st);
    }
}
class operation{
    String stop;
    operation(String st){
        this.stop=st;
    }
    void upper(){
        System.out.println(stop.toUpperCase());
    }
    void length(){
        System.out.println("Length of string is "+stop.length());
    }
    void find(String in){
        System.out.println("string contains " +in+" "+stop.contains(in));
    }
    void index(String in){
        int index1=stop.indexOf(in);
        if(index1!=-1){
            System.out.println("Index of "+in+" is at "+ index1);
        }
        else{
            System.out.println("Char not found");
        }
        
    }

}
//owercase to uppercase , find the length, find the subststring, find the index of first occurrence of character in the given string )
