<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Teacher</title>
<!-- Bootstrap CSS -->
</head>
<body>
	<div class="container mt-5">
		<h2>Add Teacher</h2>
		<form:form action="/submitTeacher" modelAttribute="teacher">
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="firstName">First Name</label>
					<form:input type="text" class="form-control" id="firstName"
						placeholder="Enter first name" path="firstName" />
					<form:errors path="firstName" />

				</div>
				<div class="col-md-6 mb-3">
					<label for="lastName">Last Name</label>
					<form:input type="text" class="form-control" id="lastName"
						placeholder="Enter last name" path="lastName" />
					<form:errors path="lastName" />

				</div>
			</div>
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="email">Email</label>
					<form:input type="email" class="form-control" id="email"
						placeholder="Enter email" path="email" />
					<form:errors path="email" />


				</div>
				<div class="col-md-6 mb-3">
					<label for="phone">Phone</label>
					<form:input type="text" class="form-control" id="phone"
						placeholder="Enter phone number" path="phone" />
					<form:errors path="phone" />

				</div>
			</div>
			<div class="row">
				<div class="col-md-12 mb-3">
					<label for="address">Address</label>
					<form:input type="text" class="form-control" id="address"
						placeholder="Enter address" path="address" />
					<form:errors path="address" />

				</div>
			</div>
			<button class="btn btn-primary" type="submit">Add Teacher</button>
		</form:form>
	</div>
</body>
</html>
