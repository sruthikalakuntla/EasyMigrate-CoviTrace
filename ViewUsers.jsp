

<%@ include file="aheader.jsp"%>

<!-- ####################################################################################################### -->
<div id="homecontent">
  <div class="wrapper">
      <CENTER>
     
      <h2>View User Details</h2><br><br>
             <table id="tab">
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>Address</th>
                        <th>UserName</th>
                      
                    </tr>
                    <%
                    try{
                    String query="select * from user";
                    ResultSet r=Queries.getExecuteQuery(query);
                    while(r.next()){
                           %>
                      <tr>
                          <td><%=r.getString("name")%></td>
                      <td><%=r.getString("email")%></td>
                      <td><%=r.getString("mobile")%></td>
                      <td><%=r.getString("address")%></td>
                      <td><%=r.getString("username")%></td>
                       
                       
                       
                      </tr>
                   <% }
                    
                    }catch(Exception e){
                        out.println(e);
}%>
                </table>
       
      </CENTER>
  </div>
</div>
<!-- ####################################################################################################### -->


<%@ include file="footer.jsp"%>
