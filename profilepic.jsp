



<%
String title="Upload Profile Picture";
%>

<%@ include file="header.jsp"%>

<%
String user=request.getParameter("id");
session.setAttribute("user",user);
%>

<form  action="uploadp.jsp" ENCTYPE="multipart/form-data" method="post" >   

 <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null && id.equalsIgnoreCase("succ"))
                                                       {

													         out.println(" <font	color=red><b>Picture Stored Successfully !!</font><br>");

													   }
%>
		
<h1>Upload Profile Pic</h1><br><br>
<table  width="60%" align="center">
  <tr>
	<td><td><input type="file" name="pic" accept="image/*"><br><br><button type="submit" class="btn btn-default">Upload</button></td>

  </tr>
  </table>

</form>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>