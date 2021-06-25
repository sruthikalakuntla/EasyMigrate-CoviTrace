


<%@ include file="aheader.jsp"%>


<!-- ####################################################################################################### -->
<div id="homecontent">
  <div class="wrapper">
      <CENTER>
     
      <h2>MIGRATION REQUEST</h2><br><br>
             <table style="margin-bottom: 200px;"  id="tab">
                    <tr>
                        <th>USER ID</th>
                        <th>FROM LOCATION</th>
                        <th>TO LOCATION</th>
                        <th>REQUEST DATE</th>
                        <th>STATUS</th>
                     
                    </tr>
                    <%
                    try{
                    String query="select * from migration";
                    ResultSet r=Queries.getExecuteQuery(query);
                    while(r.next()){
                        String status=r.getString("status");
                      %>
                      <tr>
                          <td><%=r.getString("uid")%></td>
                      <td><%=r.getString("mfrom")%></td>
                      <td><%=r.getString("mto")%></td>
                      <td><%=r.getString("date")%></td>
                     
                       <%
                       if(status.equals("waiting")){
                       %>
                       <td><a href="AcceptMigration.jsp?id=<%=r.getString("id")%>">Accept</a>
		       / <a href="RejectMigration.jsp?id=<%=r.getString("id")%>">Reject</a></td>
                       <%
                       }else{
%>
<td><%=r.getString("status")%></td>
<%
}
                       %>
                       
                       
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
