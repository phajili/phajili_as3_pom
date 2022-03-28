package ada.wb2.phajili.utils;

import java.sql.*;

public class DBConnectionPool {

    public static Connection connect() throws ClassNotFoundException, SQLException {
        Class.forName("org.postgresql.Driver");

        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/parvinhajili", "parvinhajili", "2710");


        return con;
    }


}
