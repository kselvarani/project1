<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
#Campaign {
  background-color: lightgrey;
  width: 60%;
  border: 25px solid green;
  padding: 50px;
  margin: auto;
}
input[type=text],select{
width:100%;
padding:15px 30px;
box-sizing:border-box;
border:2px solid gray;
font-size:15px;
}

input[type=date]
{
width:100%;
padding:15px 30px;
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

<div id="Campaign">
<form method="post" action="AdminCampaign">
<div>
<h2 style="text-align:center">Campaign</h2>
<table style="font-size:20px">
<tr><td><b>Campaign Name</b></td>
<td><input type="text" name="campaignname" placeholder="Enter campaign name" required></td></tr>
<tr><td><b>Campaign Start Date</b></td>
<td><input type="text" name="campaignstartdate" placeholder="Enter campaign start date" required></td></tr>
<tr><td><b>Campaign End Date</b></td>
<td><input type="text" name="campaignenddate" placeholder="Enter campaign end date" required></td></tr>
<tr><td><b>Campaign contact person</b></td>
<td><input type="text" name="campaigncontactperson" placeholder="Enter campaign contact person" required></td></tr>
<tr><td><b>Event Name</b></td>
<td><select name="eventname">
      <option value="digital systems">Digital Systems</option>
      <option value="circuit analysis">Circuit Analysis</option>
      <option value="power electronics">Power Electronics</option>
      <option value="microcontroller">Microcontroller</option>
    </select></td></tr>
</table>
<input type="submit" value="Submit" style="text-align:center">
</div>
</form>
</div>
</body>
</html>