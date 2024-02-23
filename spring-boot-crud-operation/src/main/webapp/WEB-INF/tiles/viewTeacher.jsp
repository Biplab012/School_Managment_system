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
		<h2>Teacher Details</h2>
		<div>
			<label>Search:</label> <input type="text" id="searchInput">
		</div>

		<table class="table" id="dataTable">
			<thead>
				<tr>
					<th align="center">ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Mobile Number</th>
					<th>Address</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${teacher}" var="teacher">
					<tr>
						<td>${teacher.teacherId}</td>
						<td>${teacher.firstName}</td>
						<td>${teacher.lastName}</td>
						<td>${teacher.email}</td>
						<td>${teacher.phone}</td>
						<td>${teacher.address}</td>


					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>

</body>
</html>
