<%@page import="com.selva.dao.ClubDao"%>
<jsp:useBean id="u" class="com.selva.bean.Club"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=ClubDao.save(u);
if(i>0){
response.sendRedirect("addclub-success.jsp");
}else{
response.sendRedirect("addclub-error.jsp");
}
%>