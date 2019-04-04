<%@page import="com.selva.dao.UserDao"%>
<jsp:useBean id="u" class="com.selva.bean.Event"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDao.save(u);
if(i>0){
response.sendRedirect("adduser-success.jsp");
}else{
response.sendRedirect("adduser-error.jsp");
}
%>