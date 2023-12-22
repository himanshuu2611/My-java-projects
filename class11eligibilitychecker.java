import java.util.Scanner;
public class exameligibilitychecker {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int subj;
        while (true) {
            System.out.println("Welcome !!");
            System.out.println("choose option to check eligibility -->");
            System.out.println("\n 1. Science\n 2. maths\n 3. commerce\n 4. BST\n 5. Exit");
            subj = sc.nextInt();
            switch (subj) {
                case 1:
                    System.out.println("Enter physics marks :");
                    int p = sc.nextInt();
                    System.out.println("Enter maths marks : ");
                    int m = sc.nextInt();
                    System.out.println("Enter chemistry marks :");
                    int c = sc.nextInt();
                    if (p >= 80 && m >= 80 && c >= 80) {
                        System.out.println("Hurray ! You're eligible !");
                    } else {
                        System.out.println("Sorry You're not eligible !");

                    }
                    break;
                case 2:
                    System.out.println("Enter physics marks :");
                    int ph = sc.nextInt();
                    System.out.println("Enter chemistry marks :");
                    int ch = sc.nextInt();
                    System.out.println("Enter biology marks :");
                    int b = sc.nextInt();
                    if (ph >= 80 && ch >= 80 && b >= 80) {
                        System.out.println("Hurray ! You're eligible !");
                    } else {
                        System.out.println("Sorry You're not eligible !");

                    }
                    break;
                case 3:
                    System.out.println("Enter physics marks :");
                    int phy = sc.nextInt();
                    System.out.println("Enter maths marks : ");
                    int ma = sc.nextInt();
                    System.out.println("Enter chemistry marks :");
                    int che = sc.nextInt();
                    if (ma >= 70 && che >= 50 && phy >= 50) {
                        System.out.println("Hurray ! You're eligible !");
                    } else {
                        System.out.println("Sorry You're not eligible !");

                    }
                    break;
                case 4:
                    System.out.println("Enter physics marks :");
                    int phys = sc.nextInt();
                    System.out.println("Enter maths marks : ");
                    int mat = sc.nextInt();
                    System.out.println("Enter chemistry marks :");
                    int chem = sc.nextInt();
                    if (mat >= 50 && chem >= 50 && phys >= 50) {
                        System.out.println("Hurray ! You're eligible !");
                    } else {
                        System.out.println("Sorry You're not eligible !");

                    }
                    break;
                case 5:
                    System.exit(0);
                    System.out.println("Thank you !");

            }
        }
    }
}
