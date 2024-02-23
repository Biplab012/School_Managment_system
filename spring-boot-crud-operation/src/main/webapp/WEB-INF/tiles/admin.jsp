<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>School Portal</title>
<!-- Bootstrap CSS -->
<link href="css/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet" />

<script src="css/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>

<style>
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
}

#sidebar {
	background: #343a40;
	color: #fff;
	height: 100vh;
	position: fixed;
	left: 0;
	top: 0;
	width: 250px;
	padding-top: 10px;
}

#sidebar .navbar-brand {
	font-size: 1.5rem;
	font-weight: bold;
	padding: 10px 20px;
}

#sidebar .nav-link {
	padding: 10px 20px;
	font-size: 1rem;
	color: #fff;
}

#sidebar .nav-link:hover {
	background-color: #495057;
}

#content {
	margin-left: 250px;
	padding: 20px;
}

#content h2 {
	margin-top: 20px;
	margin-bottom: 20px;
}

#logout {
	position: fixed;
	bottom: 20px;
	left: 20px;
}
</style>
</head>
<body>

	<div id="sidebar">
		<div class="navbar-brand">Admin Portal</div>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/dashboard">Dashboard</a>
			</li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#"
				id="navbarDarkDropdownMenuLink" role="button"
				data-bs-toggle="dropdown" aria-expanded="false"> Student </a>
				<ul class="dropdown-menu dropdown-menu-dark"
					aria-labelledby="navbarDarkDropdownMenuLink">
					<li class="nav-item"><a class="dropdown-item"
						href="/addStudent">Add Student</a></li>
					<li class="nav-item"><a class="dropdown-item"
						href="/viewStudent">View Student Details </a></li>

				</ul></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#"
				id="navbarDarkDropdownMenuLink" role="button"
				data-bs-toggle="dropdown" aria-expanded="false"> Teachers </a>
				<ul class="dropdown-menu dropdown-menu-dark"
					aria-labelledby="navbarDarkDropdownMenuLink">
					<li class="nav-item"><a class="dropdown-item"
						href="/addTeacher">Add Teachers</a></li>
					<li class="nav-item"><a class="dropdown-item"
						href="/viewTeacher">View Teachers Details </a></li>

				</ul></li>
			<li class="nav-item"><a class="nav-link" href="#">Courses</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Events</a></li>
		</ul>
	</div>

	<div id="content">
		<tiles:insertAttribute name="body" />
	</div>

	<button id="logout" class="btn btn-danger">Logout</button>

	<!-- Bootstrap JS -->
	<!-- Custom JavaScript -->
	<script>
		// Logout functionality
		document.getElementById('logout').addEventListener('click', function() {
			// Perform logout actions here, such as redirecting to the logout page or clearing session data
			alert('Logout successful');
			// Example: window.location.href = 'logout.php';
		});
	</script>

</body>
</html>
