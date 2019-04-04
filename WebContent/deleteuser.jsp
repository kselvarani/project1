<%@page import="com.selva.dao.UserDao"%>
<jsp:useBean id="u" class="com.selva.bean.Event"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDao.delete(u);
response.sendRedirect("viewusers.jsp");
%>