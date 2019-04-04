<%@page import="com.selva.dao.ClubDao"%>
<jsp:useBean id="u" class="com.selva.bean.Club"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=ClubDao.update(u);
response.sendRedirect("viewclub.jsp");

%>