
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    
    String query="select * from owner where username='"+uname+"'and password='"+pwd+"'";
    ResultSet i=Queries.getExecuteQuery(query);
    if(i.next()){
      String status=i.getString("status");
       session.setAttribute("id",i.getString("id"));
       session.setAttribute("username",i.getString("username"));
        session.setAttribute("email",i.getString("email"));
        if(status.equals("waiting")){
            %>
      <script type='text/javascript'>
          window.alert("You are Not Authorized By Admin");
          window.location="owner.jsp";
      </script>
      <%
        }else{
%>
      <script type='text/javascript'>
          window.alert("Login Successful...!!");
          window.location="OwnerHome.jsp";
      </script>
      <%
}
    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Login Failed..!!");
          window.location="owner.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>