<!DOCTYPE html>
<%@ include file="admin_navigation_bar.jsp"%>
<div class="container ">
    <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
            <div class="h3 mt-5">
               Add Books
            </div>
            <form action="BookInsert" method="post" >
                <div class="form-group">
                    <label>Name of Book</label>
                    <input type="text" class="form-control" placeholder="Enter Bookname" name="bookname">
                </div>
                <div class="form-group">
                    <label>Writer</label>
                    <input type="text" class="form-control" placeholder="Author name" name="authorname">
                </div>

                <div class="form-group">
                    <label>ISBN</label>
                    <input type="text" class="form-control" placeholder="Enter ISBN" name="isbn">
                </div>
                <div class="form-group">
                    <label>Publication</label>
                    <input type="text" class="form-control" placeholder="Enter Publication" name="publication">
                </div>
                <div class="form-group">
                    <label>Edition</label>
                    <input type="text" class="form-control" placeholder="Enter edition" name="edition">
                </div>
                
                                <div class="form-group">
    <label for="bookselect">Select Category</label>
<select name="bookselect" class="form-control">
    
    <option value="Comic">Comic</option>
    <option value="Horror">Horror</option>
    <option value="Romance">Romance</option>
    <option value="Funny">Funny</option>
    <option value="History">History</option>
    <option value="Thriller">Thriller</option>
    <option value="Crime and Mistery">Crime and Mistery</option>
    <option value="Science Fiction">Science Fiction</option>
    <option value="Poetry">Poetry</option>
    <option value="Self Help">Self Help</option>
    
    
    </select>
</div>
                <div class="form-group">
                    
                    <input type="submit" class="btn btn-primary" value="Add Book" name="submit">
                </div>

                
            </form>
            
        </div>
                <div class="col-3"></div>

    </div>
</div>

 <link rel="stylesheet" href="bootstrap.min.css">
    <style>
        .container{
            height:650px;
            width:1200px;
            background-image: url(kitab8.jpg)
        }
        .one{
            height:650px;
            width:400px;
            background-color: blue;
            background: rgba(255, 255, 255, 0.4);
            margin-left: 350px;
        }

    </style>