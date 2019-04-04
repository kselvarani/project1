<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
#Event {
  background-color: lightgrey;
  width: 60%;
  border: 25px solid green;
  padding: 50px;
  margin: auto;
}
input[type=text],select{
width:100%;
padding:15px 20px;
box-sizing:border-box;
border:2px solid gray;
font-size:15px;
}

input[type=date]
{
width:100%;
padding:15px 20px;
box-sizing:border-box;
border:2px solid gray;
font-size:15px;
}
input[type=submit]{
width:30%;
color:white;
height:5%;
background-color:dodgerblue;
padding-top:10px;
float:right;
text-align:center;
font-size:15px;
}
input[type=submit]:hover{
background-color:powderblue;
}

</style>
</head>
<body>
<form method="post" action="AdminEvent">
<div id="Event" class="tabcontent">
<div>
<h2 style="text-align:center">Event</h2>
<table style="font-size:20px">
<tr><td><b>Event Name</b></td>
<td><input type="text" name="eventname" placeholder="Enter event name" required></td></tr>
<tr><td><b>Event ID</b></td>
<td><input type="text" name="eventid" placeholder="Enter event id" required></td></tr>
<tr><td><b>Event Date</b></td>
<td><input type="date" name="eventdate" placeholder="Enter event date" required></td></tr>
<tr><td><b>Event Description</b></td>
<td><textarea rows="6" cols="50" name="eventdescription" placeholder="Enter event description" style="font-size:15px" required></textarea></td></tr>
</table>
<input type="submit" value="Submit" style="text-align:center">
</div>
</div>
</form>
</body>
</html>