<!DOCTYPE html>
<%@ include file="user_navigation_bar.jsp"%>

<html>
    <head>
        <title>Register</title>

    </head>
    <link rel="stylesheet" href="bootstrap.min.css">
    <style>
        .container{
            height:650px;
            width:1200px;
            background-image: url(library.jpg)
        }
        .one{
            height:650px;
            width:400px;
            background-color: blue;
            background: rgba(255, 255, 255, 0.4);
            margin-left: 350px;
        }


    </style>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-3"></div>
                <div class="col-6">
                    <div class="h3 mt-5">
                        Request Book
                    </div>
                    <form action="${pageContext.request.contextPath}/RequestBook" method="post">
                        <div class="form-group">
                            <label>Name of Book</label>
                            <input type="text" class="form-control" placeholder="Enter Bookname" name="bookname">
                        </div>
                        <div class="form-group">
                            <label>writer</label>
                            <input type="text" class="form-control" placeholder="Author name" name="writer">
                        </div>
                        <div class="form-group">
                            <label>Edition</label>
                            <input type="text" class="form-control" placeholder="Enter edition" name="edition">
                        </div>             
                        <div class="form-group">

                            <button type="submit" class="btn btn-primary" name="btn_submit">Request</button>
                        </div>
                    </form>
                    <div class="col-3"></div>
                </div>
            </div>
        </div>

        <link rel="stylesheet" href="bootstrap.min.css">
        <style>
            .container{
                height:650px;
                width:1200px;
                background-image: url(kitab9.jpg)
            }
            .one{
                height:650px;
                width:400px;
                background-color: blue;
                background: rgba(255, 255, 255, 0.4);
                margin-left: 350px;
            }

        </style>

        <script type="text/javascript" src="jquery-3.3.1.slim.min.js"></script>
        <script type="text/javascript" src="popper.min.js"></script>
        <script type="text/javascript" src="bootstrap.min.js"></script>
    </body>
</html>