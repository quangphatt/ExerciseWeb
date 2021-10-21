<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style type="text/css">
	.card-body.p-5{
		font-size: 18px;
	}
</style>
<title>Thanks</title>

</head>
<body>
	<section style="background-color: #508bfc;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card shadow-2-strong" style="border-radius: 1rem;">
						<div class="card-body p-5 ">
							<h1 class="text-center">Thanks for joining our email list</h1>

							<p>Here is the information that you entered:</p>

							<label>Email:</label> 
							<span>${user.emaill}</span> 
							<br> 
							<label>First Name:</label> 
							<span>${user.fname}</span> 
							<br> 
							<label>Last Name:</label> 
							<span>${user.lname}</span> 
							<br>
							<p>To enter another email address, click on the Back button
								in your browser or the Return button shown below.</p>
							<form action="user.jsp" method="post">
								<input type="hidden" name="action" value="join"> <input
									type="submit" value="Return">
							</form>
							<hr />
							<label> <strong>Current Date:</strong>
							</label> <span>${requestScope.currentDate}</span> <br> <label><strong>First
									User:</strong> </label> <span>${users[0].emaill}</span> <br /> <label><strong>Second
									User:</strong></label> <span>${users[1].emaill}</span> <br /> <label><strong>Third
									User:</strong></label> <span>${users[2].emaill}</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<br />
	<hr />
	<a href="https://exercisegroupweb.herokuapp.com/Exercises">Back
		door</a>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
</body>
</html>