interface Animal {
    public abstract void cry();
}

class Cat implements Animal {
    public void cry() {
        System.out.println("miyaong~");
    }
}

class Dog implements Animal {
    public void cry() {
        System.out.println("wangwang!!");
    }
}

public class Java {
    public static void main(String[] args) {
        Cat c = new Cat();
        Dog d = new Dog();

        c.cry();
        d.cry();
    }
}