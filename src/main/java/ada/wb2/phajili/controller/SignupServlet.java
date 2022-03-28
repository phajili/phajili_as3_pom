package ada.wb2.phajili.controller;

import ada.wb2.phajili.utils.DBConnectionPool;
import ada.wb2.phajili.utils.SHAAlgorithm;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;

public class SignupServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        String email = request.getParameter("email");
        String pass = request.getParameter("pass");


        try {

            PreparedStatement ps = DBConnectionPool.connect().prepareStatement(
                    "insert into users(email,pass) values(?,?)");

            ps.setString(1, email);
            ps.setString(2, SHAAlgorithm.toHexString(SHAAlgorithm.getSHA(pass)));


            int i = ps.executeUpdate();
            if (i > 0)
                response.sendRedirect("index.jsp");

        } catch (Exception e2) {
            System.out.println(e2);
        }

    }

}
