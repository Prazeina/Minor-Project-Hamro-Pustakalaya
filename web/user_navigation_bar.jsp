<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <title>user profile</title>
        <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"/>-->
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <script type="text/javascript" src="jquery-3.3.1.slim.min.js"></script>
        <script type="text/javascript" src="bootstrap.min.js"></script>

    </head>
    <body>
        <div class="container ">
            <div class="col-12">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="user_history.jsp">User history</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="request_book.jsp">Request Book</a>
                            </li>

                            <form action='${pageContext.request.contextPath}/myservlet' method='get'>

                                <div class="search_button" href="search_book.jsp">

                                    <input type="submit" value="Available" style="height: 40px; width: 100px; margin-left: 95px; margin-right: auto;margin-top: 0px;" class="btn"> </input>

                                </div>
                            </form>
                            <form action='${pageContext.request.contextPath}/SearchServlet' method="get">
                                <div class="search_button">

                                    <input type="text" placeholder="Search" name="search_field" style="height: 50px; width: 200px; margin-left: 45px; margin-right: auto;margin-top: 0px;" class="btn"> </input>

                                    <input type="submit" value="Search" style="height: 40px; width: 100px; margin-left: 95px; margin-right: auto;margin-top: 0px;" class="btn"> </input>

                                </div>


                                <li class="nav-item">
                                    <a class="nav-link" href="">
                                        <div class="dropdown">
                                            <a class="btn btn-secondary dropdown-toggle ml-5" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" <input style="height: 40px; width: 200px; margin-left: 35px; margin-right: 60px;margin-top: 0px;" ></input>
                                                Category
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">

                                                <a class="dropdown-item" name ="drpop" href="comic.jsp"><input type="text" value="1" hidden/>Comic</a>
                                                <a class="dropdown-item" href="horror.jsp">Horror</a>
                                                <a class="dropdown-item" href="romance.jsp">Romance</a>
                                                <a class="dropdown-item" href="funny.jsp">Funny</a>
                                                <a class="dropdown-item" href="history.jsp">History</a>
                                                <a class="dropdown-item" href=thriller.jsp>Thriller</a>
                                                <a class="dropdown-item" href="crime.jsp">Crime and Mistery</a>
                                                <a class="dropdown-item" href="scifi.jsp">Science Fiction</a>
                                                <a class="dropdown-item" href="poetry.jsp">Poetry</a>
                                                <a class="dropdown-item" href="selfhelp.jsp">Self Help</a>


                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </form>
                        </ul>

                        <div class="dropdown">
                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            </a>
                                
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <a class="dropdown-item" href="logout.jsp">Log out</a>                                    
                            </div>
                            </nav>
                        </div>

                        </body>
                        </html>