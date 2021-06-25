


<%@ page  import="java.sql.*" import="java.io.*" import="com.database.*" %>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
    margin: 0 auto;
    padding: 0 20px;
}

.container {

    border-radius: 5px;
    padding: 10px;
    margin: 10px 0;
}

.darker {
    border-color: #ccc;
    background-color: #ddd;
}

.container::after {
    content: "";
    clear: both;
    display: table;
}

.container img {
    float: left;
    max-width: 60px;
    width: 100%;
    margin-right: 20px;
    border-radius: 50%;
}

.container img.right {
    float: right;
    margin-left: 20px;
    margin-right:0;
}

.time-right {
    float: right;
    color: #aaa;
}

.time-left {
    float: left;
    color: #999;
}
</style>
</head>

<style>
table {
 height: 500px;
    width: 100%;
    display:block;
}
thead {
    display: inline-block;
    width: 100%;
    height: 20px;
}
tbody {
    height: 500px;
    display: inline-block;
    width: 100%;
    overflow: auto;
}
</style>

<body>
<br><br><br>
<!-- <table >
<tr><td > -->

<%
Connection ccc=Dbconnection.getcon();
	Statement ss = ccc.createStatement();
		
	String sss = "select * from msgs order by sno ";
	ResultSet r=ss.executeQuery(sss);
	while(r.next())
	{
		if(r.getString("user_").equals("chatbot")){
%>
<div class="container darker">
  <img src="images/bg2.jpg" alt="Avatar" >
  <p class="time-left"><%=r.getString("msg")%></p>
  <span class="time-right"><%=r.getString("time_")%></span>
</div>

<%	
		
		}else{%>
<div class="container darker">
 <img src="view.jsp?id=<%=r.getString("user_")%>" alt="Avatar" class="right">
  <p class="time-right" ><%=r.getString("msg")%></p>
  <span class="time-left"><%=r.getString("time_")%></span>
</div>		
<%		}
	}
	

%>




					<form method="post" action="chatbot2.jsp">
							<div class="wrap-input100 validate-input m-b-23" data-validate = "Required">
						<input size="60"type="text" name="text"  autofocus placeholder="Type your query">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

</form>
<!-- </table> -->
</body>
</html>
<br><br><br><br><br>
