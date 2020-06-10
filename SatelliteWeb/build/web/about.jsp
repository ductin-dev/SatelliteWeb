<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Satellite | About</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  </head>
  <body>
        <jsp:include page="Common/user.jsp" />
        <jsp:include page="Common/header5.jsp" />
        
        <div class="block-31" style="position: relative;">
            <div class="owl-carousel loop-block-31 ">
              <div class="block-30 block-30-sm item" style="background-image: url('img/background.jpg');" data-stellar-background-ratio="0.5">
                  <div class="container"><div class="row">                    
                        <video class="col-12" controls autoplay>
                            <source src="img/about_video.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                        </video>                    
                  </div></div>
              </div>
            </div>
        </div>
        
        <div class="featured-section overlay-color-2" style="background-image: url('images/bg_3.jpg');">
            <div class="container">
              <div class="row">
                <div class="col-md-4">
                  <img src="img/about_avatar.jpg" alt="Avatar" class="img-fluid">
                </div>
                <div class="col-md-8 pl-md-5" style="font-family: arial;">
                  <span class="featured-text d-block mb-3">Người sáng lập</span>
                  <h2>Đoàn Đức Tín - sinh viên FUDN</h2>
                  <p class="mb-3">_ Trang tài liệu này dành tặng cho các bạn, hãy sử dụng nó một cách tốt nhất nhé</p>
                  <span class="fund-raised d-block mb-5">Thanks for visited this website</span>
                  <br>
                  <br>
                  <p><a href="cv.jsp" class="btn btn-success btn-hover-white py-3 px-5" target="_blank">Read the full CV</a></p>
                </div>
              </div>
            </div>
        </div>
        
        <jsp:include page="Common/footer.jsp" />
  </body>
</html>
