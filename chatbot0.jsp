<%@ page  import="java.sql.*" import="java.io.*" import="com.database.*" %>
<html>
<head>

<%
int id=0;
Connection ccc=Dbconnection.getcon();
	Statement ss = ccc.createStatement();
		
	String sss = "delete from msgs ";
	ss.executeUpdate(sss);
	response.sendRedirect("chatbot.jsp");


%>
       
