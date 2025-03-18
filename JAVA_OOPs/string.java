import java.lang.*;
public class string {
    public static void main(String[] args) {
        //string litteral method
        String s1 = "hello";
        String s2=" World!";
        //string concatetnation
        System.out.println(s1+s2);
        //to print the length of the string
        System.out.println(s1.length()+s2.length());
        //sdtring buffer
         //create a object for the string buffer class using new keyword pass abc print it
        StringBuffer s3=new StringBuffer("abc");
        System.out.println(s3);
        //concate s3 
        s3.append(" Hello");
        System.out.println(s3);
        //create an object of string class using new keyword and pass a string and print it and use append with it
        String s4=new String("I am don");
        //s4.append();
        s3.insert(2, "xyz"); //position , new string
        System.out.println(s3);
        //delete
        s3.delete(2,5);//start pos and end pos
        System.out.println(s3);

    }
    
}

