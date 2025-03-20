import java.util.Scanner;

public class Aream {
    public static void main(String[] args) {
        Shape ar=new Shape();
        Scanner scanner=new Scanner(System.in);
        while (true) {
            System.out.print("Enter your option for find area 1:rectangcle 2:circle \n 3:Triangle 4:Exit : ");
            double options=scanner.nextDouble();
            double area=0.0;
            if (options == 1) {
                area = ar.rect();
            }
            else if (options==2) {
              area=ar.circle();  
            }
            else if(options==3){
                area=ar.triangle();
            }
            else if(options==4){
                System.out.println("You are exited");
                scanner.close();
                ar.clos();
                System.exit(0);
            }
            else{
                System.out.println("Enter valid options");
            }
            System.out.println("The area is: " +area);
        }
            
    }
}
class Shape {
    Scanner scanner=new Scanner(System.in);
    public double rect(){
        System.out.println("Enter the length of rectangle: ");
        double length=scanner.nextDouble();
        System.out.print("Enter the width of rectangle: ");
        double width=scanner.nextDouble();
        double area = length*width;
        return area;
    }
    public double circle(){

        System.out.print("Enter radius of circle: ");
        double radius=scanner.nextDouble();
        double pi=3.14;
        double area = pi*(radius*radius);
        return area;
    } 
    public double triangle(){

        System.out.print("Enter the length of rectangle: ");
        double length=scanner.nextDouble();
        System.out.print("Enter the breadth of rectangle: ");
        double breadth=scanner.nextDouble();
        double area = 0.5*length*breadth;
        return area;
    }
    public void clos(){
        scanner.close();
    }
}
