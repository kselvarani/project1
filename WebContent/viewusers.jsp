<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>

<%@page import="com.selva.dao.UserDao,com.selva.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Event List</h1>

<%
List<Event> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" >
<tr><th>EventName</th><th>EventID</th><th>EventDate</th><th>EventDescription</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getEventname()}</td><td>${u.getEventid()}</td><td>${u.getEventdate()}</td><td>${u.getEventdescription()}</td><td><a href="deleteuser.jsp?eventid=${u.getEventid()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="adduserform.jsp">Add New Event</a>

</body>
</html>