<%@ page  import="java.sql.*" import="java.io.*" import="com.database.*" %>

<%
String qn=request.getParameter("qn");
String ans=request.getParameter("ans");
%>
<%
int i=0;


Connection con1=Dbconnection.getcon();
Statement st = con1.createStatement();
	try{
	i=st.executeUpdate("insert into ans values('"+qn+"','"+ans+"')");
	response.sendRedirect("addque.jsp?id=level-2");

	}
	catch(Exception e)
	{
		System.out.println(e);
		return;
	}
	

%>	
<%@ include file="footer.jsp"%>
