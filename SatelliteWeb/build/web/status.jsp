<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Satellite | Status</title>
    </head>
    <body>
       <jsp:include page="Common/header1.jsp" />

        <div class="block-31" style="position: relative;">
        <div class="owl-carousel loop-block-31 ">
        <div class="block-30 block-30-sm item" style="background-image: url('img/background.jpg');" data-stellar-background-ratio="0.5">              
        
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-md-11">
            <%
            Object header = request.getAttribute("statusHeader");
            Object detail = request.getAttribute("statusDetail");
            Object statusColor = request.getAttribute("statusColor");
            out.println("<h2 class=\"heading mb-5\" style=\"color:"+statusColor+";\">"+header+"</h2>"
                    + "<h5 class=\"heading mb-5\" style=\"font-size:35px;\">"+detail+"</h5>");
            %>
            </div>
          </div>
        </div>
        </div>
        </div>
        </div>
            
        <jsp:include page="Common/footer.jsp" />
    </body>
</html>
