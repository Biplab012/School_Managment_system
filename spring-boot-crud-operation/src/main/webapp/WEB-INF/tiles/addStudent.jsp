<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html lang="en">
<style>
#addStudent {
	padding-left: 40px;
	padding-merge: 40px
}
</style>

<body>
	<div class="container mt-5" id="addStudent">
		<h2 class="mb-4">Student Information</h2>

		<form:form action="/submitStudent" modelAttribute="student"
			method="post">
			<div class="row mb-3">
				<div class="col-md-6">
					<label for="firstName" class="form-label">First Name</label>
					<form:input type="text" class="form-control" id="firstName"
						path="firstName" />
					<form:errors path="firstName" />

				</div>
				<div class="col-md-6">
					<label for="lastName" class="form-label">Last Name</label>
					<form:input type="text" class="form-control" id="lastName"
						path="lastName" />
					<form:errors path="lastName" />
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-md-6">
					<label for="fatherName" class="form-label">Father's Name</label>
					<form:input type="text" class="form-control" id="fatherName"
						path="fatherName" />
					<form:errors path="fatherName" />

				</div>
				<div class="col-md-6">
					<label for="motherName" class="form-label">Mother's Name</label>
					<form:input type="text" class="form-control" id="motherName"
						path="motherName" />
					<form:errors path="motherName" />

				</div>
			</div>
			<div class="row mb-3">
				<div class="col-md-6">
					<label for="mobileNumber" class="form-label">Mobile Number</label>
					<form:input type="text" class="form-control" id="mobileNumber"
						path="mobileNumber" />
					<form:errors path="mobileNumber" />

				</div>
				<div class="col-md-6">
					<label for="fatherMobileNumber" class="form-label">Father's
						Mobile Number</label>
					<form:input type="text" class="form-control"
						id="fatherMobileNumber" path="fatherMobileNumber" />
					<form:errors path="fatherMobileNumber" />

				</div>
			</div>
			<div class="row mb-3">
				<div class="col-md-12">
					<label for="address" class="form-label">Address</label>
					<form:input type="text" class="form-control" id="address"
						path="address" />
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
	</div>

</body>
</html>
