<%-- 
    Document   : header
    Created on : 05-06-2020, 10:07:35
    Author     : ADMIN
--%>

<%@page import="Database.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            
    <link href="https://fonts.googleapis.com/css?family=Overpass:300,400,500|Dosis:400,700" rel="stylesheet">
    <link rel="stylesheet" href="Lib2/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="Lib2/css/animate.css">
    <link rel="stylesheet" href="Lib2/css/owl.carousel.min.css">
    <link rel="stylesheet" href="Lib2/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="Lib2/css/magnific-popup.css">
    <link rel="stylesheet" href="Lib2/css/aos.css">
    <link rel="stylesheet" href="Lib2/css/ionicons.min.css">
    <link rel="stylesheet" href="Lib2/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="Lib2/css/jquery.timepicker.css">
    <link rel="stylesheet" href="Lib2/css/flaticon.css">
    <link rel="stylesheet" href="Lib2/css/icomoon.css">
    <link rel="stylesheet" href="Lib2/css/fancybox.min.css">
    <link rel="stylesheet" href="Lib2/css/bootstrap.css">
    <link rel="stylesheet" href="Lib2/css/style.css">
    <script>
        window.onload=function changeNav(){
            var s=document.title;
            if (s==="Satellite | Home") {
                document.getElementById('nav-item-home').classList.add('active');
                document.getElementById('nav1').style="color:orange";
            }
            if (s==="Satellite | About") {
                document.getElementById('nav-item-about').classList.add('active');
                document.getElementById('nav5').style="color:orange";
            }
            if (s==="Satellite | Document") {
                document.getElementById('nav-item-document').classList.add('active');
                document.getElementById('nav2').style="color:orange";
            }
            if (s==="Satellite | Team") {
                document.getElementById('nav-item-team').classList.add('active');
                document.getElementById('nav6').style="color:orange";
            }
            if (s==="Satellite | Projects") {
                document.getElementById('nav-item-project').classList.add('active');
                document.getElementById('nav3').style="color:orange";
            }
            if (s==="Satellite | Blog") {
                document.getElementById('nav-item-blog').classList.add('active');
                document.getElementById('nav4').style="color:orange";
            }
        };
    </script>
    </head>
    <body>
    
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
          <div class="col-6 col-xl-2">
                            <img  src="img/satelliteLogo.png" style="border:0px;padding:0px;margin:0px;width:80%;height: 80%">
                            <a href="index.jsp" class="mb-0"></a>
                            </img>
                        </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
          </button>

          <div class="col-12 collapse navbar-collapse" id="ftco-nav" style="font-family: arial;">
            <ul class="navbar-nav ml-auto">
                <li id="nav-item-home" class="nav-item" style="padding:10px 10px 0px 10px;"><a  href="index.jsp" class="nav-link"><p id="nav1" style="">Home</p></a></li>
                <li id="nav-item-document" class="nav-item" style="padding:10px 10px 0px 10px;"><a  href="document.jsp" class="nav-link" ><p id="nav2" style="">Document</p></a></li>
                <li id="nav-item-project" class="nav-item" style="padding:10px 10px 0px 10px;"><a  href="projects.jsp" class="nav-link"><p id="nav3" style="">Projects</p></a></li>
                <li id="nav-item-blog" class="nav-item" style="padding:10px 10px 0px 10px;"><a  href="blog.jsp" class="nav-link"><p id="nav4" style="">Blog</p></a></li>
                <li id="nav-item-about" class="nav-item" style="padding:10px 10px 0px 10px;"><a  href="about.jsp" class="nav-link"><p id="nav5" style="">About</p></a></li>
                <li id="nav-item-team" class="nav-item" style="padding:10px 10px 0px 10px;"><a  href="myteam.jsp" class="nav-link"><p id="nav6" style="">My Team</p></a></li>
                <li class="nav-item" style="padding:10px 10px 0px 10px;">
                    <%
                    try{
                        User s=(User)session.getAttribute("user");
                        if (s==null) throw new Exception("");
                        out.println("<a style=\"padding: 0px;padding-top:15px;\" href=\"\" class=\"nav-link\">"
                                + "<button style=\" background-color:blue; color:white;font-size:20px;\">"+s.getuDigitalName()+"</button></a>");
                        out.println("<a style=\"padding: 0px;\" class=\"nav-link\">"
                                + "<form action=\"UserController\" method=\"post\">"
                                + "<input type=hidden name=\"action\" value=\"logoutAction\"/>"
                                + "<input type=submit style=\" background-color:red ; color:white;font-size:20px;\" value=\"Đăng Xuất\"/>"
                                + "</form></a>");
                    }catch (Exception e){
                         out.println("<a style=\"padding: 0px;padding-top:15px;\" href=\"login.jsp\" class=\"nav-link\"><button style=\" background-color:red ; color:white;font-size:20px;\">Đăng Nhập</button></a>");
                    }
                    %>     
                </li>
            </ul>
          </div>
        </div>
        </nav>
    </body>
</html>
