
<%@ include file="uheader.jsp"%>

<div id="homecontent">



  <div class="wrapper">
      <CENTER>
          <%
           String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
          
          %>
      <h3>WELCOME <%=username%> </h3>
      
       
      </CENTER>
  </div>
</div>
<%@ include file="footer.jsp"%>
