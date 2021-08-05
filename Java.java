class Test {
    int field;
    String field2;

    public void method1() {
        System.out.println("Java practicing file");
    }
}

public class Java {
    public static void main(String[] args) {
        int[] arr1 = new int[] { 1, 2, 3, 4, 5 };
        int sum = 0;
        // Enhanced for문
        for (int tp : arr1)
            sum += tp;
        System.out.print(sum);
    }
}