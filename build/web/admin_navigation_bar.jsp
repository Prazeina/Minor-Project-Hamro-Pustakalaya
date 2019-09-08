<!DOCTYPE html>
<html>
    <head>
        <title>admin profile</title>
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
                                    <a class="nav-link" href="admin_add_books.jsp">Add Books</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="admin_delete_book.jsp">Delete Member</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="admin_requested_book.jsp">Requested Book</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="admin_issue_history.jsp">Issue_History</a>
                                </li>
<!--                                <form action='${pageContext.request.contextPath}/myservlet' method="get">
                                <div class="search_button">
            
            <input type="submit" value="Available" style="height: 50px; width: 200px; margin-left: 45px; margin-right: auto;margin-top: 0px;" class="btn"> </input>
            
        </div>
                            </form>-->
                               
                            </ul>
                        </div>
                        <div>
                            <div class="dropdown">
                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                   
                                </a>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                   
                                    <a class="dropdown-item" href="logout.jsp">Log Out</a>

                                </div>
                            </div>
                    </nav>

    </div>

</body>
</html>