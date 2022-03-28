package ada.wb2.phajili.controller;


import ada.wb2.phajili.utils.DBConnectionPool;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EnrollServlet extends HttpServlet {


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String courseID = request.getParameter("enroll");
        HttpSession session = request.getSession();
        String studentEmail = (String) session.getAttribute("email");
        try {
            PreparedStatement st = DBConnectionPool.connect().prepareStatement("INSERT INTO course_user (user_email, course_id) VALUES (?, ?)");
            st.setString(1, studentEmail);
            st.setInt(2, Integer.parseInt(courseID));

            int i = st.executeUpdate();
            if (i > 0)
                response.sendRedirect("listOfCourse");

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }


    }
}
