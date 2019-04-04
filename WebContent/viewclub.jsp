<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Clubs</title>
</head>
<body>

<%@page import="com.selva.dao.ClubDao,com.selva.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Club List</h1>

<%
List<Club> list=ClubDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" >
<tr><th>ClubId</th><th>ClubName</th><th>ClubDescription</th><th>Update</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getClubid()}</td><td>${u.getClubname()}</td><td>${u.getClubdescription()}</td><td><a href="editform.jsp?clubid=${u.getClubid()}">Update</a></td><td><a href="deleteclub.jsp?clubid=${u.getClubid()}">Delete</a></td></tr>
</c:forEach>

</table>
<br/><a href="addclubform.jsp">Add New Club</a>

</body>
</html>