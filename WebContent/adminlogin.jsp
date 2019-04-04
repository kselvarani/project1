<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
background-image:url("file:///D://wallpaper.jfif");
}
div{
  background-color: lightgrey;
  width: 60%;
  height:100%;
  border: 25px solid green;
  padding: 25px;
  margin: auto;
  text-align:center;
  font-size:15px;
}
input,select{
width:100%;
padding:10px 30px;
box-sizing:border-box;
border:2px solid gray;
}
input[type=submit]{
width:30%;
color:white;
background-color:green;
padding-top:10px;
}
input[type=submit]:hover{
background-color:powderblue;
}
input[type=radio]
{
border:0px;
width:8%;
height:1em;
}
img{
width:50%;
height:100%;
}
</style>
</head>
<body>

<div>
<h2 style="text-align:center">Login</h2>
<form method="post" action="AdminRegistration">
<table >
<tr><td>Admin Name</td>
<td><input type="text" name="adminname" placeholder="Enter admin name" required></td></tr>
<tr><td>Password</td>
<td><input type="password" name="password" required></td></tr>
</table>
<a href="admin.jsp"><input type="submit" value="Login" style="text-align:center"></a>
</form>
</div>

</body>
</html>