<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<body>
<h3>User Registration</h3>
<form action="/saveUser" method="get" >
<pre>
Name :    <input type="text" name="name"/>

Email:    <input type="text" name="email"/>

Password: <input type="password" name="password"/>

Role(s): <input type="checkbox" name="roles" value="Admin"/>Admin
         <input type="checkbox" name="roles" value="Manager"/>Manager
 	 <input type="checkbox" name="roles" value="HR"/>HR
	 <input type="checkbox" name="roles" value="Employee"/>Employee
    <input type="submit" value="Register"/>

</pre>
</form>
</body>
</html>