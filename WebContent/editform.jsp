<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.selva.dao.ClubDao,com.selva.bean.Club"%>

<%

String clubid=request.getParameter("clubid");
System.out.println(clubid);
Club u=ClubDao.getRecordById(clubid);
%>

<h1>Edit Form</h1>
<form action="edituser.jsp" method="post">
<input type="text" name="clubid" value="<%=u.getClubid() %>"/>
<input type="text" name="clubname" value="<%=u.getClubname() %>"/>
<textarea name="clubdescription" value="<%=u.getClubdescription() %>"></textarea>


<table>
<tr><td colspan="2"><input type="submit" value="Edit Club"/></td></tr>
</table>
</form>

</body>
</html>