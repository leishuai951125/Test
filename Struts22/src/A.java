import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by leishuai on 2018/7/17.
 */
public class A {
    public static void main(String [] args){
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("找不到");
        }
//        String url=null;
//        Connection connection=DriverManager.getConnection(url);
    }
}
