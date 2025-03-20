public class multi_Inheritense {
    public static void main(String[] args) {
        child obj=new child();
    }
}
class paren1{
    paren1(){
        System.out.println("First parent");
    }
}
class paren2 extends paren1{
    paren2(){
        System.out.println("Second parent");
    }
}
class child extends paren2{
    child(){
        System.out.println("This is a child");
    }
}