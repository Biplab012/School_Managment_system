<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoginPage</title>

    <style>
 
#contact {
    width: 400px;
    border: 2px solid rgb(109, 106, 106);
    height:400px;
        padding: 80px 40px;
    
  
        
    
}
    </style>
</head>

<body>
    <div id="contact" class="container-fluid" >
      <form id="sams">
           <input placeholder="Enter Email" type="email">
            <input placeholder="Enter Password" type="password">
            <div id="sam"><input type="checkbox">Remember Me <a href="#!" id="sam">Forgot password?</a></div> 
            
            <input class="custom-btn btn-4" type="submit" value="Sign in">

            <div class="text-center">
                <p>Not a member? <a href="signup3.html">Register</a></p>
              </div>
        </form>
       
    </div>
</body>
</html>

