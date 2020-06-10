<%@page import="Controller.CurrentUser"%>
<%@page import="Database.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <% 
      try{
          if (CurrentUser.getName()=="") throw new Exception("Not Login!");
      out.println("<h4>Welcome, "+CurrentUser.getName()+"</h4>");
      out.println("<button type=\"submit\" style=\"display:inline;\" value=\"Đăng Xuất\"></button>");
      }catch (Exception e){
          out.println("<h4>NOT LOGIN!</h4>");
          out.println("<button type=\"submit\" style=\"display:inline;\" value=\"Đăng Nhập\"></button>");
      }
  %>

