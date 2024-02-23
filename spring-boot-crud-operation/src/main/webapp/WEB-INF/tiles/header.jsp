<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v6.0.0-beta1/css/all.css">

<script src="css/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<link href="js/index.js" />
<link href="css/index.css" rel="stylesheet" />
<script>
        function NewTab() {
            window.open(
            "https://www.geeksforgeeks.org", "_blank");
        }
    </script>
 
<title></title>
</head>
<body>
	<nav class="navbar ">
		<div class="container-fluid">
			<a href="#" class="navbar-brand"> <img src="Photo/header_log.jpg"
				alt="Bootstrap">
			</a>
			<div>
				<button class="btn btn-outline-success" type="button">Student
					login</button>
				<button class="btn btn-outline-success" ><a href="/adminLogin">Admin Module</a></button>
			</div>
		</div>
	</nav>
	<div
		style="padding-bottom: 10px; position: -webkit-sticky; position: sticky; top: 0; overflow: hidden; list-style-type: none">
		<nav class="navbar navbar-expand-lg  navbar-dark bg-dark ">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup"
				style="justify-content: center; display: block;">
				<div class="navbar-nav" style="font-size: 20px;">
					<a class="nav-item nav-link active" href="/home">Home</a> <a
						class="nav-item nav-link" href="#">About</a> <a
						class="nav-item nav-link" href="/contact">Contact</a>
				</div>
			</div>
		</nav>
	</div>

</body>
</html>

