package ada.wb2.phajili.controller;

import ada.wb2.phajili.utils.DBConnectionPool;
import ada.wb2.phajili.utils.SHAAlgorithm;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.PreparedStatement;

public class UpdateServlet extends HttpServlet {


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {

        HttpSession session = request.getSession();
        String userID = (String) session.getAttribute("id");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String country = request.getParameter("country");
        String city = request.getParameter("city");
        String gender = request.getParameter("gender");
        String age = request.getParameter("age");
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");

        try {
            String sql = ("update users set email=?,pass=?,country=?,city=?,gender=?,age=?,name=?,surname=? where email=?;");

            PreparedStatement ps = DBConnectionPool.connect().prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, SHAAlgorithm.toHexString(SHAAlgorithm.getSHA(pass)));
            ps.setString(3, country);
            ps.setString(4, city);
            ps.setString(5, gender);
            ps.setString(6, age);
            ps.setString(7, name);
            ps.setString(8, surname);
            ps.setString(9, email);

            int i = ps.executeUpdate();
            if (i > 0)
                getServletConfig().getServletContext().getRequestDispatcher("/profile.jsp").forward(request, response);

        } catch (Exception e2) {
            System.out.println(e2);
        }

    }
}


