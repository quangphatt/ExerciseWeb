<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>Chapter 8</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="styles/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="styles/fonts/icomoon/style.css">

    <link rel="stylesheet" href="styles/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="styles/css/bootstrap.min.css">
</head>
<body>
	<div class="content">
        <div class="container">
          <div class="row justify-content-center">
            <!-- <div class="col-md-6 order-md-2">
              <img src="images/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
            </div> -->
            <div class="col-md-6 contents">
              <div class="row justify-content-center">
                <div class="col-md-12">
                  <div class="form-block">
                      <div class="mb-4">
                      <h3>Join our email list</h3>
                      <p class="mb-4">To join our email list, enter your name and email address below.</p>
                    </div>
                    <form action="emailList" method="post">
                    	<input type="hidden" name="action" value="add">
                      <div class="form-group first">
                        <label>Email</label>
                        <input type="email" class="form-control" name="email" value="${user.email}">
    
                      </div>
                      <div class="form-group first">
                        <label>First Name</label>
                        <input type="text" class="form-control" name="firstName" value="${user.firstName}">
    
                      </div>
                      <div class="form-group last mb-4">
                        <label>Last Name</label>
                        <input type="text" class="form-control" name="lastName" value="${user.lastName}">
                        
                      </div>
                          
                      <input type="submit" value="Join Now" class="btn btn-pill text-white btn-block btn-primary">
                    
                    </form>
                  </div>
                </div>
              </div>
              
            </div>
            
          </div>
        </div>
      </div>

    <script src="styles/js/jquery-3.3.1.min.js"></script>
    <script src="styles/js/popper.min.js"></script>
    <script src="styles/js/bootstrap.min.js"></script>
    <script src="styles/js/main.js"></script>
</body>
</html>