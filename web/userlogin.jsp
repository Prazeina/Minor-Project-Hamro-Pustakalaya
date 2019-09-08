<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user login</title>
        <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"/>-->
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <script type="text/javascript" src="jquery-3.3.1.slim.min.js"></script>
        <script type="text/javascript" src="bootstrap.min.js"></script>
        <style type="text/css">
       
            .container{
                background-image:url(kitab7.jpg);
            }
            .q{
                background-color: darkblue;
                background:rgba(10,90,100,0.4);
                margin-bottom: 0px;
                margin-left: 350px;


            }
            .one{
                font-size: 32px;
                margin-left:30px;

            }
            .two{
                font-size: 25px;
                margin-left:30px;
                color:black;
            }
            .three{
                margin-left: 30px;
                font-size: 15px;
                font-color:black;

            }
            .four{
                font-size: 15px;
                margin-left:30px;
            }
            .five{
                text-align: center;
            }
            form{
                margin-left: 30px;
            }
            a{
                text-decoration: none;
                color:darkblue;
            }
          

        </style>
    </style>
</head>
<body>
    <div class="container ">
         
        <div class="col-4 q">
            <!-- <div class="content"> -->
            <div class="one">User Login
            </div> <br>
            <div class="two">Sign in to your account<br>
            </div><br>
            <div class="three">
                please enter your name and password to log in 
            </div><br>
            <form action="UserLogin" class="navbar-form" method="post">
                <div class="form-group">
                    
                    <input type="email" class="form-control" placeholder="email" name="email"> 
                    
                    <br><br>
                     <span class=" text-danger float-right">
                         
                    </span>
                    <input type="password" class="form-control" placeholder="Password" name="password"><br><br>
                    <input class="btn btn-default" type="submit" value="Login" name="btn_login">	
                    <br>
                </div>
            </form><br><br>
            
           
            

            <div class="four">Don't have an account yet? <a href="user_create_account.jsp"><b>Create an account</b></a>
            </div> <br><br><br><br><br><br><br>

            <div class="five">
                Hamro Pustakalaya
            </div>
        </div>

    </div>

</body>
</html>