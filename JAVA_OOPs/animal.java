public class animal {
    public static void main(String[] args) {
        animal2 anim=new animal2();
        anim.color_display();
    }
}
class animal1{
    String color="red";
    public void color_display(){
        System.out.println("color is :"+color);
    }
}
class animal2 extends animal1{
    String color="Blue";
    public void color_display(){
        System.out.println("color is : "+color);
        //super variable ie immediate parent variable
        //act as a reference variable
        System.out.println("color is : "+super.color);
    }
}