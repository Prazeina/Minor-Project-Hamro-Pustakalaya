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
        <div class="container bg-danger">
            <!--<div class='col-2'></div>-->
            <div class='col-8'>
                <div class='one'>
                <div class='row'>
                    <div class="col-1"></div>
                    <div class="col-8 mt-5 ">
                        <h1>Create An Account</h1>
                    </div>
                   
                </div>
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-8 mt-5">
                        <form action='UserAdd' method='post'>
                            
                             
                            
                            <div class="form-group">
                                <label >Username</label>
                                
                                <input type="username" class="form-control"  placeholder="Username" name='name' required>
                            </div>
                            <div class="form-group">
                                <label >Email Address</label>
                                
                                </span>
                                <input type="email" class="form-control"  placeholder="Email" name='email' required>
                            </div>
<!--                            <div class="form-group">
                                <label >Contact number</label>
                                
                                </span>
                                <input type="numeric" class="form-control"  placeholder="Phone Number" name='number' required>
                            </div>-->
                            
                             <div class="form-group">
                                <label >Password</label>
                                
                                </span>
                                <input type="password" class="form-control"  placeholder="Password" name='password' required="">
                            </div>
                            
                            <div>
                                
                            <button type="submit" class="btn btn-primary" name='btn_register'>Register</button>
                            </div>
                            
                        </form>
                    </div>
                    

                </div>
            </div>
            </div>
           

            
        </div>


        <script type="text/javascript" src="jquery-3.3.1.slim.min.js"></script>
        <script type="text/javascript" src="popper.min.js"></script>
        <script type="text/javascript" src="bootstrap.min.js"></script>
    </body>
</html>