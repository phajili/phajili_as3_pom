package ada.wb2.phajili.controller;


import ada.wb2.phajili.utils.LoginValidate;
import ada.wb2.phajili.utils.SHAAlgorithm;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;


public class AuthServlet extends HttpServlet {


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        System.out.println();
        try {
            if (LoginValidate.validate(email, SHAAlgorithm.toHexString(SHAAlgorithm.getSHA(pass)))) {
                request.setAttribute("email", email);
                session.setAttribute("email", email);
                getServletConfig().getServletContext().getRequestDispatcher("/profile.jsp").forward(request, response);
            } else {
                out.println("Username or Password incorrect");

            }
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
    }

}



