
<%@ include file="uheader.jsp"%>
<div id="homecontent">
  <div class="wrapper">
              <%
           String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
          %>

      <CENTER>
     
      <h2>MIGRATION STATUS</h2>
	  <br>
             <table style="margin-bottom: 200px;" id="tab">
                    <tr>
                       
                        <th>MIGRATE FROM</th>
                         <th>MIGRATE TO</th>
                        <th>REQUEST DATE</th>
                        <th>STATUS</th>
                     
                       
                    </tr>
                    <%
                    try{
                    String query="select * from migration where uid='"+username+"'";
                    ResultSet r=Queries.getExecuteQuery(query);
                    while(r.next()){
                           %>
                      <tr>
                          
                          <td><%=r.getString("mfrom")%></td>
                          <td><%=r.getString("mto")%></td>
                      
                      <td><%=r.getString("date")%></td>
                    <td><%=r.getString("status")%></td>
                         
                       
                      </tr>
                   <% }
                    
                    }catch(Exception e){
                        out.println(e);
}%>
                </table>
       
      </CENTER>
  </div>
</div>

<%@ include file="footer.jsp"%>
