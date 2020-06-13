<%@page import="Database.Model"%>
<%@page import="Database.User"%>
<%@page import="Database.DatabaseInfo"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Satellite | Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script>
        window.onload=function(){          
            <% DatabaseInfo.countAccess++; %>
        };
    </script>    
    
  </head>
  <body>
  <jsp:include page="Common/header.jsp" />
 
  <div class="block-31" style="position: relative;">
    <div class="owl-carousel loop-block-31 ">
      <div class="block-30 block-30-sm item" style="background-image: url('img/background.jpg');" data-stellar-background-ratio="0.9">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-md-8">
              <br><br><br><br><br><br><br>
              <h2 class="heading mb-5">Welcome to our website</h2>
              <p style="display: inline-block;"><a href="about.jsp" >
                      <span class="play-icon-wrap align-self-center mr-4" >
                          <span class="ion-ios-play"style="color: orangered;">
                          </span></span> 
                      <span class="align-self-center" style="color: white;">Hướng dẫn truy cập tài liệu</span></a>         
              </p>
              <br><br><br><br><br><br><br>
              <p style="color:white;font-size:20px;margin:0px;">More</p>
              <a href="#contact-section">         
            <span class=" icon-keyboard_arrow_down" style="size: 88px;font-size:88px;"></span>
            </a>
            </div>
          </div>       
        </div> 
          
      </div>
    </div>
  </div>
  
  <div class="site-section section-counter">
    <div class="container">
      <div class="row">
        <div class="col-md-5 pr-5" style="background-color: orangered;">
          <div class="block-48" style="background-color: orangered;font-family: arial;" >
              <span class="block-48-text-1" style="color:yellow;text-shadow:1px 1px black;">Số lượt truy cập</span>
              <%
                  out.println("<div class=\"block-48-counter ftco-number\" data-number=\""+DatabaseInfo.countAccess+"\" style=\"color:yellow;\">0</div>");
              %>
              <span class="block-48-text-1 mb-4 d-block" style="color:yellow;text-shadow:1px 1px black;">Trong tổng thời gian <p>N/A</p></span>
              <p class="mb-0"><a href="#contact-section" class="btn btn-white px-3 py-2">Liên Hệ Admin Ngay<a></p>
            </div>
        </div>
        <div class="col-md-7 welcome-text" style="font-family: arial;">
          <h2 class="display-4 mb-3">Website giúp bạn những gì?</h2>
          <p class="lead">- Chia sẻ tài liệu học tập, kiểm tra, lời giải - miễn phí</p>
           <p class="lead">- Cung cấp các phần mềm, trò chơi hay cùng với source code</p>
            <p class="lead">- Mở rộng kiến thức về IT với những bài hướng dẫn dễ hiểu nhất</p>
             <p class="lead">- Cùng team phát triển ADS và kiếm thêm thu nhập</p>
          <p class="mb-4">Wanna Join ? </p>
          <p class="mb-0" style="display: inline;" ><a href="login.jsp" class="btn btn-primary px-3 py-2" style="background-color: orangered;border:0px;margin:0px;padding: 20px;">Đăng Ký</a></p>
          <p class="mb-0" style="display: inline;"><a href="login.jsp" class="btn btn-primary px-3 py-2" style="border:0px;margin:0px;padding: 20px;">Đăng Nhập</a></p>
        </div>
      </div>
    </div>
    </div>

    <div id="contact-section">
    <div class="featured-section overlay-color-2"  style="background-image: url('img/bg2.jpg');">  
    <div class="container">
      <div class="row">

        <div class="col-md-6 mb-5 mb-md-0">
          <img src="img/home_picture1.jpg" alt="Image" class="img-fluid">
        </div>

        <div class="col-md-6 pl-md-5">

          <div class="form-volunteer">
            
            <h2>Đăng Ký (COMMING SOON)</h2>
            <form action="" method="post">
              <div class="form-group">
                <!-- <label for="name">Name</label> -->
                <input type="text" class="form-control py-2" id="name" placeholder="Enter your name">
              </div>
              <div class="form-group">
                <!-- <label for="email">Email</label> -->
                <input type="text" class="form-control py-2" id="email" placeholder="Enter your email">
              </div>
              <div class="form-group">
                <!-- <label for="v_message">Email</label> -->
                <textarea name="v_message" id="" cols="30" rows="3" class="form-control py-2" placeholder="Write your message"></textarea>
                <!-- <input type="text" class="form-control py-2" id="email"> -->
              </div>
              <div class="form-group">
                <input type="submit" class="btn btn-white px-5 py-2" value="Send">
              </div>
            </form>
          </div>
        </div>
        
      </div>
    </div>
    </div>
      
  </div> 
  <jsp:include page="Common/footer.jsp" />

  <!-- loader -->
  </body>
</html>
