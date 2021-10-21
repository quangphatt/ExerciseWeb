<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>Thank You</title>
    <link rel="stylesheet" href="styles/css/style.css" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 contents">
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <div class="form-block">

                            <h1>Thanks for joining our email list</h1>

                            <p>Here is the information that you entered:</p>

                            <label>Email:</label>
                            <span>${user.email}</span>
                            <br>
                            <label>First Name:</label>
                            <span>${user.firstName}</span>
                            <br>
                            <label>Last Name:</label>
                            <span>${user.lastName}</span>
                            <br>

                            <p>To enter another email address, click on the Back button in your
                                browser or the Return button shown below.</p>

                            <form action="" method="get">
                                <input type="hidden" name="action" value="join">
                                <input type="submit" value="Return"
                                    class="btn btn-pill text-white btn-block btn-primary">
                            </form>
                            <label>
                                <strong>Current Date:</strong>
                            </label>
                            <span>${requestScope.currentDate}</span>
                            <br>
                            <label><strong>First User:</strong></label>
                            <span>${users[0].email}</span><br>
                            <label><strong>Second User:</strong></label>
                            <span>${users[1].email}</span><br>
							<label><strong>Third User:</strong></label>
							<span>${users[2].email}</span><br>
                            <label>
                                <strong>Customer Service Email:</strong>
                            </label>
                            <span>${initParam.custServEmail}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>