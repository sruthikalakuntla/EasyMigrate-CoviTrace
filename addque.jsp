<%@ page  import="java.sql.*" import="com.database.*" import="CT.*"%>


<%@ include file="aheader.jsp"%>
		  <head>
<style>
table, th, td {
  border: 1px solid black;
}
th, td {
    padding: 15px;
    text-align: left;
}
</style>
</head>

											   
											   <%
                                                       String message=request.getParameter("m");
													   message=request.getParameter("id");
                                                       if(message!=null )
                                                       {
                                                               out.println("<script type=text/javascript> alert('Data Added !!');</script>");
                                                       }
                                               %>


<br><br><br>
<h2>Question and Answers</h1>
<hr>
<%
int count=0;
Connection con1=Dbconnection.getcon();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from questions");
%>	

<h4>
Questions
</h1>
       
<table align="center" cellpadding="0" >
<tr><td><h4><font size="" color="#127655"><b><b>SNo<td><h4><font size="" color="#127655"><b>Question
<%while(rs.next())
	{
		%>
<tr><td><%=++count%>
<td><%=rs.getString(2)%>
<%
	}
%>	
<form method="post" action="add_1.jsp">
	
<tr><td><td><input required  type="text" name="que" placeholder="Enter Question" size="40"><input required  type="submit" value="   ADD  ">
</form>
</table>


<br><br>




<h4>
Answers
</h1>

<%
count=0;
	st = con1.createStatement();
	rs=st.executeQuery("select * from ans");

%>	
<table align="center" cellpadding="5" width="100%">
<tr><td><h4><font size="" color="#127655"><b>Sno</font><td><h4><font size="" color="#127655"><b>Question </font><td><h4><font size="" color="#127655"><b>Answer</font>

<%
while(rs.next())
	{
		%>
	<tr><td><%=++count%><td><%=GetData.main(rs.getString(1))%><td><%=rs.getString(2)%>

<%
	}
%>	
</table>
	



<%
	st = con1.createStatement();
	rs=st.executeQuery("select * from questions");

%>	
<form method="post" action="add_2.jsp">
<br>           
<table align="center" cellpadding="5" >
<tr><td><h4><font size="" color="#127655"><b>Select Question</font>
<tr><td><select name="qn">
<%
while(rs.next())
	{
		%>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%>

<%
	}
%>	

</select><br>
	
<tr><td><input required  type="text" name="ans"  placeholder="Enter Answer" size="30"><input type="submit" value="   ADD  ">
</form>
</table>

<!-- **********************************************************88 -->





<%@ include file="footer.jsp"%>