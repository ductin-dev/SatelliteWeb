package Controller;
//Author: Doan Duc Tin

import Database.Model;
import Database.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserController {

    public void find(HttpServletRequest request, HttpServletResponse response)
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
            CurrentUser.setName(s.getuName());

            //View
            request.setAttribute("statusHeader", "Login Sucess");
            request.setAttribute("statusDetail", "");
            request.setAttribute("statusColor", "blue");
            RequestDispatcher rd = request.getRequestDispatcher("status.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            request.setAttribute("statusHeader", "Login failure!");
            request.setAttribute("statusDetail", "Details: " + e);
            request.setAttribute("statusColor", "red");
            RequestDispatcher rd = request.getRequestDispatcher("status.jsp");
            rd.forward(request, response);
        }
    }

}
