<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="Lib3_Login/css/index.css">
    <link rel="stylesheet" type="text/css" href="Lib3_Login/css/bootstrap.min.css">
    <title>Satellite | Assigned</title>
</head>
<body style="background-image:url('img/background.jpg');text-shadow:1px 1px black;">
    <div class="container">
        <div class="row">  
            <div class="col-md-12 rightNum1 heade">
                <div class="rightNum2">
                    <h1 class="text-center">Chào mừng bạn đã quay trở lại</h1>
                    <br>
                    <h2 class="text-center" style="color:orange;text-shadow:1px 1px black;">Để có thể sử dụng mọi tính năng, vui lòng đăng nhập</h2>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <div class="container">
        <div class="row">  
            <div class="col-md-4 ">   
            </div>
            <div class="col-md-4 rightNum1 heade"><div class="rightNum2">
                <form action="UserController" method="post">
                    <input type="hidden" name="action" value="loginAction">
                    <p class="text-center">Don't have an account? <a href="">Create account</a></p>
                    <input type="text" class="form-control" id="uName" name="user" placeholder="Username"> 
                    <small id="userError" class=" text-danger"></small>
                    <input type="password" class="form-control" id="pWord" name="pass" placeholder="Password">             
                    <input type="checkbox" id="chk" style="font-size:18px;"> <small>Remember me</small>
                    <p class="text-center fg"><a href="">Forget Password</a></p>
                    <input type="submit" class="btn btn-info" style="background-color:orangered;" value="LOGIN"></input>
                </form>
                </div> 
            </div>
            <div class="col-md-4 ">               
            </div>
        </div>
    </div>
    <script  src="Lib3_Login/js/index.js"></script>
    <script type="text/javascript" src="Lib3_Login/js/bootstrap.min.js"></script>
</body>
</html>