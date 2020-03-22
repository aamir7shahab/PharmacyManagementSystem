import java.sql.*;

public class DB_Connection {
    public static Connection connect() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/pharmacymanagemetsystem";
            conn = (Connection) DriverManager.getConnection(url, "user1", "admin");
            System.out.println("Connection established");
        } catch (ClassNotFoundException | SQLException e) {
        System.err.println(e);
        }
        return conn;
    }
}
