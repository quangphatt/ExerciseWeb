<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<title>Join Email</title>

</head>
<body>
	<section class="" style="background-color: #9A616D;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-xl-10">
					<div class="card" style="border-radius: 1rem;">
						<div class="row g-0">
							<div class="col-md-6 col-lg-5 d-none d-md-block">
								<img
									src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-login-form/img1.jpg"
									alt="login form" class="img-fluid"
									style="border-radius: 1rem 0 0 1rem;" />
							</div>
							<div class="col-md-6 col-lg-7 d-flex align-items-center">
								<div class="card-body p-4 p-lg-5 text-black">
									<form action="emailList" method="post">
										<input type="hidden" name="action" value="add">
										<div class="d-flex align-items-center mb-3 pb-1">
											<i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
											<span class="h1 fw-bold mb-0">Join our email list</span>
										</div>
										<h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">To
											join our email list, enter your name and email address below.</h5>
										<p>
											<i>${message}</i>
										</p>
										<div class="form-outline mb-4">
											<input type="email" id="form2Example17"
												class="form-control form-control-lg" name="email"
												value="${user.emaill}" required /> <label
												class="form-label" for="form2Example17">Email
												address</label>
										</div>
										<div class="form-outline mb-4">
											<input type="text" id="form2Example27"
												class="form-control form-control-lg" name="firstName"
												value="${user.fname}" required /> <label class="form-label"
												for="form2Example27">First Name:</label>
										</div>
										<div class="form-outline mb-4">
											<input type="text" id="form2Example27"
												class="form-control form-control-lg" name="lastName"
												value="${user.lname}" required /> <label class="form-label"
												for="form2Example27">Last Name:</label>
										</div>
										<div class="pt-1 mb-4">
											<button class="btn btn-dark btn-lg btn-block" type="submit">Join
												Now</button>
										</div>
									</form>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
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
