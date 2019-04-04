<%@page import="com.selva.dao.CampaignDao"%>
<jsp:useBean id="u" class="com.selva.bean.Campaign"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
CampaignDao.delete(u);
response.sendRedirect("viewcampaign.jsp");
%>