<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

.navbar {
  width: 100%;
  background-color: #555;
  overflow: auto;
}

.navbar a {
  float: left;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background-color: #000;
}

.active {
  background-color: #4CAF50;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
  }
}
.header{
background-color:lightyellow;
float:center;
}

</style>
<body>
<div id="header"><h2>University Student's Union</h2>
<div class="navbar">
  <a class="active" href="#"><i class="fa fa-fw fa-home"></i> Home</a> 
  
  <a href="#"><a href="login.jsp"><i class="fa fa-fw fa-user"></i>Login</a></a>
  <a href="#"><a href="signup.jsp"><i class="fa fa-fw fa-user"></i>Sign in</a></a>
</div>
 <img src="university.jpg" alt="University" style="width:100%; height:80%;">


</body>
</html> 

