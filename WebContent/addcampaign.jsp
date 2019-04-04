<%@page import="com.selva.dao.CampaignDao"%>
<jsp:useBean id="u" class="com.selva.bean.Campaign"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=CampaignDao.save(u);
if(i>0){
response.sendRedirect("addcampaign-success.jsp");
}else{
response.sendRedirect("addcampaign-error.jsp");
}
%>