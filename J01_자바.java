import java.util.*;

public class J01_자바 {

    public static boolean prime(int cnt){
        boolean boo=true;

        if(cnt==1){
            boo=false;
        }
        for(int i=2; i<cnt; i++){
            if(cnt%i==0){
                boo =false;
            }
            
        }
        return boo;
    }

    public static void main(String[] args) {

        Scanner sc= new Scanner(System.in);
        System.out.println("정수를 입력하세여");
        int cnt = sc.nextInt();

        for(int i =1; i<=cnt; i++){
            if(prime(i)==true){
                System.out.print(i + "  ");
            }
        }

      

    }
}