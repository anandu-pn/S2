public class parent1 {
    public static void main(String[] args) {
        child obj=new child(3, 5, 9);
        obj.area();
        obj.volume();
        
    }
}
class Parent{
    int l,b;
    Parent(int x,int y){
        l=x;
        b=y;
    }
}
class child extends Parent{
    int h;
    child(int x,int y,int z){
        //this intialise immediate parent class
        super(x, y);
        h=x;
    }
    public void area(){
        System.out.println("Area of "+(super.l*super.b));
    }
    public void volume(){
        System.out.println("Volume of "+(super.l*super.b*h));
    }
    
}

