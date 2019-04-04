<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image: url("wallpaper.jfif");
}

div {
	background-color: lightgrey;
	width: 60%;
	height: 100%;
	border: 25px solid green;
	padding: 25px;
	margin: auto;
	text-align: center;
	font-size: 15px;
}

input,select {
	width: 100%;
	padding: 10px 30px;
	box-sizing: border-box;
	border: 2px solid gray;
}

input[type=submit] {
	width: 50%;
	color: white;
	background-color: green;
	padding-top: 10px;
}

input[type=submit]:hover {
	background-color: powderblue;
}

input[type=radio] {
	border: 0px;
	width: 8%;
	height: 1em;
}

img {
	width: 50%;
	height: 100%;
}
</style>
</head>
<body>

	<div>
		<h2 style="text-align: center">Sign Up</h2>
		<img style="float: right;" alt="university"
			src="university.jpg">
		<form method="post" action="Registration">
			<table>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="firstname"
						placeholder="Enter first name" required></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastname"
						placeholder="Enter last name" required></td>
				</tr>
				<br>

				<tr>
					<td>Mobile Number</td>
					<td><input type="number" name="mobilenumber"
						placeholder="Enter mobile number" required></td>
				</tr>
				<tr>
					<td>Age</td>
					<td><input type="number" name="age" placeholder="Enter age"
						required></td>
				</tr>
				<tr>
					<td><label for="gender">Gender</label> </td>
					<td><select name="gender">
							<option  value="male">Male</option>
							<option  value="female">Female</option>
							<option  value="other">Other</option>
					</select></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" placeholder="Enter email"
						required></td>
				</tr>
				<tr>
					<td>UserId</td>
					<td><input type="text" name="userid"
						placeholder="Enter userid" required></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" required></td>
				</tr>
				<tr>
					<td><label for="clubs">Clubs</label> </td>
					<td><select name="clubs">
							<option  value="robotics">Robotics</option>
							<option  value="power and energy">Power And
								Energy</option>
							<option  value="power electronics and drives">Power
								Electronics And Drives</option>
					</select></td>
				</tr>
			</table>
			<input type="submit" value="Sign in" style="text-align: center"
				onclick="myFunction()">
			<p id="demo"></p>
			<script>
function myFunction() {
  var txt;
   if (confirm("Press a signin!"){
    txt = "You successfully signed in!";
  } else {
    txt = "You pressed Cancel!";
  }
  document.getElementById("demo").innerHTML = txt;
}
</script>
	</div>

	</form>
</body>
</html>
