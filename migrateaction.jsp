

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
    
     String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
        
        
       
        String mfrom=request.getParameter("mfrom");
        String mto=request.getParameter("mto");
        String date=request.getParameter("date");
      
    String query="insert into migration values(null,'"+username+"','"+mfrom+"','"+mto+"','"+date+"','waiting')";
    
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Request Sent Successfully...!!!");
            window.location="MigrationReq.jsp";
        </script>
        <%
    }else{
 %>
        <script type="text/javascript">
            window.alert("Failed...!!!");
            window.location="MigrationReq.jsp";
        </script>
        <%
}
    
}catch(Exception e){
 out.println(e);   
}


%>
