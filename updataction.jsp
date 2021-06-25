

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
    
     String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
        
        
       
        String cases=request.getParameter("cases");
        String deaths=request.getParameter("deaths");
        String recovered=request.getParameter("recovered");
        String description=request.getParameter("description");
    String precaution=request.getParameter("precaution");
    
    String query="update covid set total_cases='"+cases+"',deaths='"+deaths+"',recovered='"+recovered+"',description='"+description+"',precautions='"+precaution+"'where id='"+id+"'";
    
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Updated Successfully...!!!");
            window.location="ViewCovidInfo.jsp";
        </script>
        <%
    }else{
 %>
        <script type="text/javascript">
            window.alert("Updation Failed...!!!");
            window.location="ViewCovidInfo.jsp";
        </script>
        <%
}
    
}catch(Exception e){
 out.println(e);   
}


%>
