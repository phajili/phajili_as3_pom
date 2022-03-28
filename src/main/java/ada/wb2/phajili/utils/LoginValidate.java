package ada.wb2.phajili.utils;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginValidate {


    public static boolean validate(String email, String pass) {
        boolean status = false;
        try {

            PreparedStatement ps = DBConnectionPool.connect().prepareStatement(
                    "select * from users where email=? and pass=?");
            ps.setString(1, email);
            ps.setString(2, pass);

            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
}

