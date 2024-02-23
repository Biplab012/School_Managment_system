<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>School Dashboard</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Custom CSS -->
  <style>
    /* Add your custom styles here */
  </style>
</head>
<body>
  <div class="container">
    <h1 class="mt-5 mb-3">School Dashboard</h1>
    <div class="row">
      <div class="col-md-6">
        <div class="card mb-3">
          <div class="card-header">
            Students
          </div>
          <div class="card-body">
            <h5 class="card-title">Total Students: <span id="totalStudents">100</span></h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card mb-3">
          <div class="card-header">
            Teachers
          </div>
          <div class="card-body">
            <h5 class="card-title">Total Teachers: <span id="totalTeachers">10</span></h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="card">
          <div class="card-header">
            Courses
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">Mathematics</li>
            <li class="list-group-item">Science</li>
            <li class="list-group-item">History</li>
            <li class="list-group-item">English</li>
          </ul>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card">
          <div class="card-header">
            Events
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">School Picnic - 10th Feb</li>
            <li class="list-group-item">Parent-Teacher Meeting - 15th Feb</li>
            <li class="list-group-item">Science Fair - 20th Feb</li>
            <li class="list-group-item">Sports Day - 25th Feb</li>
          </ul>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- Custom JavaScript -->
  <script>
    // Add your custom JavaScript here if needed
  </script>
</body>
</html>
    