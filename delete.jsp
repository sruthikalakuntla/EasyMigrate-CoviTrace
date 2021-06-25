

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");
try{
    String query="delete from covid where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Successfully Deleted");
            window.location="AdminViewCovidInfor.jsp";
        </script>
        <%
    }else{
 %>
        <script type="text/javascript">
            window.alert("Failed To Delete");
            window.location="AdminViewCovidInfor.jsp";
        </script>
        <%
}
}catch(Exception e){
 out.println(e);   
}



%>