import java.util.Scanner;
class rectangle{
    public static void main(String[] args) {
        Scanner scanner=new Scanner(System.in);
        System.out.println("Enter your option for find area 1:rectangcle 2:circle");
        System.out.print("Enter the length of rectangle: ");
        double length=scanner.nextDouble();
        System.out.print("Enter the width of rectangle: ");
        double width=scanner.nextDouble();
        double area = length*width;
        System.out.println("The area is: " +area);
        scanner.close();
    }
}