import java.util.LinkedList;

class Car {

    private String modelName;
    private int modelYear;
    private String color;
    private int maxSpeed;
    private int currentSpeed;
 
    Car(String modelName, int modelYear, String color, int maxSpeed) {
        this.modelName = modelName;
        this.modelYear = modelYear;
        this.color = color;
        this.maxSpeed = maxSpeed;
        this.currentSpeed = 0;
    }

    public String getModel() {
        return this.modelYear + "year " + this.modelName + " " + this.color;
    }

}

public class Java {
    public static void main(String[] args) {
        LinkedList<String> qu = new LinkedList<String>();

        qu.add("Four");
        qu.add("Two");
        qu.add("Three");
        qu.add("One");

        System.out.println(qu.peek());
        System.out.println(qu);

        System.out.println(qu.poll());
        System.out.println(qu);

        qu.remove("One");
        System.out.println(qu);
    }
}