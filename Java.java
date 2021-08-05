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
        Car myCar = new Car("Abante", 2016, "White", 200);
        System.out.println(myCar.getModel());
    }
}