package ada.wb2.phajili.controller;


import ada.wb2.phajili.utils.DBConnectionPool;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class CourseServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            out.print("<body style='background-color: azure;'>");
            PreparedStatement ps = DBConnectionPool.connect().prepareStatement("select * from courses");
            ResultSet rs = ps.executeQuery();
            out.print("<center>");
            out.print("<br><br><h1 style='color:#2e586d; border-bottom-style: solid; width:300px'> Classes </h1>");
            out.print("<table>");

            out.print("<tr style='color:white; background: #2e586d; border: 0;' >");
            out.print("<th style='border-radius: 3px; padding: 15px;'> ID </th>");
            out.print("<th style='border-radius: 3px;padding: 15px;'> Course Name </th>");
            out.print("<th style='border-radius: 3px; padding: 15px;'> Enroll </th>");
            out.print("</tr>");


            while (rs.next()) {
                out.print("<tr>" +
                        "<td style='color:#2e586d'; align='center'>" + rs.getString("course_id") + "</td>" +
                        "<td style='color:#2e586d'; align='center'>" + rs.getString("course_name") + "</td>" +
                        "<td style='display: flex; justify-content: center; align-items: center;'>" +
                        "<form action=\"enroll\" method=\"post\"> <input type=\"hidden\" name=\"enroll\" value=\"" + rs.getString("course_id") + "\"> <button type=\"submit\" >Enroll</button</td></form> </tr>"
                );
            }
            out.print("</table>");
            out.print("</center>");
            out.print("</body>");

        } catch (Exception e2) {
            e2.printStackTrace();
        } finally {
            out.close();
        }

    }
}
