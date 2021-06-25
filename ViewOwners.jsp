
<%@ include file="aheader.jsp"%>


<div id="homecontent">
  <div class="wrapper">
      <CENTER>
     
      <h2>View Owner Details</h2>
             <table id="tab">
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>Address</th>
                        <th>UserName</th>
                        <th>Authroize</th>
                    </tr>
                    <%
                    try{
                    String query="select * from owner";
                    ResultSet r=Queries.getExecuteQuery(query);
                    while(r.next()){
                        String status=r.getString("status");
                      %>
                      <tr>
                          <td><%=r.getString("name")%></td>
                      <td><%=r.getString("email")%></td>
                      <td><%=r.getString("mobile")%></td>
                      <td><%=r.getString("address")%></td>
                      <td><%=r.getString("username")%></td>
                       <%
                       if(status.equals("waiting")){
                       %>
                       <td><a href="ActivateOwner.jsp?id=<%=r.getString("id")%>">Authorize</a></td>
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

