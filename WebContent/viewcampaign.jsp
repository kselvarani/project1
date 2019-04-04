<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Campaign</title>
</head>
<body>

<%@page import="com.selva.dao.CampaignDao,com.selva.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Campaign List</h1>

<%
List<Campaign> list=CampaignDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" >
<tr><th>CampaignName</th><th>CampaignStartDate</th><th>CampaignEndDate</th><th>CampaignContactPerson</th><th>EventName</th><th>Delete</th></tr>

<c:forEach items="${list}" var="u">
	<tr><td>${u.getCampaignname()}</td><td>${u.getCampaignstartdate()}</td><td>${u.getCampaignenddate()}</td><td>${u.getCampaigncontactperson()}</td><td>${u.getEventname() }</td><td><a href="deletecampaign.jsp?campaignname=${u.getCampaignname()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="addcampaignform.jsp">Add New Campaign</a>

</body>
</html>