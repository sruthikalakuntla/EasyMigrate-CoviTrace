

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");
try{
    String query="update migration set status='Rejected' where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Successfully Rejected");
            window.location="ViewMigrationReq.jsp";
        </script>
        <%
    }else{
 %>
        <script type="text/javascript">
            window.alert("Failed To Reject");
            window.location="ViewMigrationReq.jsp";
        </script>
        <%
}
}catch(Exception e){
 out.println(e);   
}



%>