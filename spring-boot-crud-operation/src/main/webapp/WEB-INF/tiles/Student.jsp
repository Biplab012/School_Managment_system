<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Portal</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Font Awesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <!-- Custom CSS -->
  <style>
    body {
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }
    #navbar {
      background: #343a40;
      color: #fff;
      padding: 10px;
    }
    #navbar .navbar-brand {
      font-size: 1.5rem;
      font-weight: bold;
    }
    #content {
      padding: 20px;
    }
    #content h2 {
      margin-top: 20px;
      margin-bottom: 20px;
    }
    #user-icon {
      font-size: 2rem;
    }
  </style>
</head>
<body>

<nav id="navbar" class="navbar">
  <span id="user-icon" class="navbar-brand"><i class="fas fa-user"></i></span>
  <span class="navbar-brand">Student Portal</span>
</nav>

<div id="content" class="container">
  <h2>Student Portal</h2>
  <div class="row">
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Add Student</h5>
          <p class="card-text">Click below to add a new student.</p>
          <a href="#" class="btn btn-primary">Add Student</a>
        </div>
      </div>
    </div>
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">View Students</h5>
          <p class="card-text">Click below to view all students.</p>
          <a href="#" class="btn btn-primary">View Students</a>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- Font Awesome JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>

</body>
</html>

