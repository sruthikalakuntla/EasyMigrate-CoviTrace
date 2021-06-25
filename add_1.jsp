<%@ page  import="java.sql.*" import="java.io.*" import="com.database.*" %>

<%
String que=request.getParameter("que");
%>
<%
int i=0;
Connection con1=Dbconnection.getcon();
Statement st = con1.createStatement();
	try{
	i=st.executeUpdate("insert into questions(qns) values('"+que+"')");
	response.sendRedirect("addque.jsp?id=level-1");
	}
	catch(Exception e)
	{
		System.out.println(e);
		return;
	}
	

%>	
<%@ include file="footer.jsp"%>
