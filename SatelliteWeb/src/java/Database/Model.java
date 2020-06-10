package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

//Author: Doan Duc Tin
public class Model extends DatabaseInfo {

    public static Connection openConnection() throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        Class.forName(driverName).newInstance();
        Connection connection = DriverManager.getConnection(url, name, pass);
        return connection;
    }

    public User findUser(String name, String pass) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        ArrayList<User> arr = selectAll();
        for (User i : arr) {
            if (i.getuName().trim().equals(name) && i.getuPass().trim().equals(pass)) {
                return i;
            }
        }
        return null;
    }

    public ArrayList<User> selectAll() throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        ArrayList<User> arr;
        arr = new ArrayList<>();
        String sql
                = "Select * from [dbo].[User]";
        //Excute
        Connection connection = openConnection();
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);
        while (rs.next()) {
            int a = Integer.valueOf(rs.getString(1));
            String b = rs.getString(2);
            String c = rs.getString(3);
            int d = Integer.valueOf(rs.getString(4));
            arr.add(new User(a, b, c, d));

        }
        //Return
        connection.close();
        return arr;
    }
}
