<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap Table Example</title>
<!-- Bootstrap CSS -->

</head>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		const searchInput = document.getElementById('searchInput');
		const tableRows = document.querySelectorAll('#dataTable tbody tr');

		searchInput.addEventListener('keyup', function() {
			const searchTerm = searchInput.value.toLowerCase();

			tableRows.forEach(function(row) {
				const rowData = row.textContent.toLowerCase();

				if (rowData.includes(searchTerm)) {
					row.style.display = '';
				} else {
					row.style.display = 'none';
				}
			});
		});
	});
</script>
<body>

	<div class="container mt-5">
		<h2>Student Details</h2>
		<div>
			<label>Search:</label> <input type="text" id="searchInput">
		</div>

		<table class="table" id="dataTable">
			<thead>
				<tr>
					<th align="center">ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Father Name</th>
					<th>Mother Name</th>
					<th>Mobile Number</th>
					<th>Father Number</th>
					<th align="center">Address</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${student}" var="student">
					<tr>
						<td>${student.studentID}</td>
						<td>${student.firstName}</td>
						<td>${student.lastName}</td>
						<td>${student.fatherName}</td>

						<td>${student.motherName}</td>
						<td>${student.mobileNumber}</td>
						<td>${student.fatherMobileNumber}</td>
						<td>${student.address}</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
	<!-- Bootstrap JS (Optional, for dropdowns, modals, etc.) -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
