package Controller;
//Author: Doan Duc Tin

import Database.Model;
import Database.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserController {

    public void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            //Get front-end input infomation
            String uName = request.getParameter("user");
            String uPass = request.getParameter("pass");
            //Excute
            Model dataController = new Model();
            User s = dataController.findUser(uName, uPass);
            if (s == null) {
                throw new Exception("User/Pass in correct or not found");
            }
            HttpSession ss = request.getSession();
            ss.setAttribute("user", s);

            //View
            request.setAttribute("statusHeader", "Welcome, " + s.getuDigitalName());
            request.setAttribute("statusDetail", "Please back to main page");
            request.setAttribute("statusColor", "cyan");
            RequestDispatcher rd = request.getRequestDispatcher("status.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            request.setAttribute("statusHeader", "Login failure!");
            request.setAttribute("statusDetail", e);
            request.setAttribute("statusColor", "red");
            RequestDispatcher rd = request.getRequestDispatcher("status.jsp");
            rd.forward(request, response);
        }
    }

    public void logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            request.getSession().invalidate();
            //View
            response.sendRedirect("index.jsp");
        } catch (IOException e) {
            request.setAttribute("statusHeader", "Logout failure!");
            request.setAttribute("statusDetail", e);
            request.setAttribute("statusColor", "red");
            RequestDispatcher rd = request.getRequestDispatcher("status.jsp");
            rd.forward(request, response);
        }
    }
}
