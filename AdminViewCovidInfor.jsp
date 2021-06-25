<%@ include file="aheader.jsp"%>

<div id="homecontent">
  <div class="wrapper">
      <CENTER>
     
      <h2>MIGRATION REQUEST</h2><br><br>

             <table id="tab">
                      <tr>
                        <th>COUNTRY</th>
                         <th>STATE</th>
                        <th>TOTAL CASES</th>
                        <th>DEATHS</th>
                        <th>RECOVERED</th>
                        <th>DESCRIPTION</th>
                       <th>PRECAUTIONS</th>
                        <th>ACTION</th>
                    </tr>
                    <%
                    try{
                    String query="select * from covid ";
                    ResultSet r=Queries.getExecuteQuery(query);
                    while(r.next()){
                           %>
                      <tr>
                          
                          <td><%=r.getString("country")%></td>
                          <td><%=r.getString("center")%></td>
                      <td><%=r.getString("total_cases")%></td>
                      <td><%=r.getString("deaths")%></td>
                      <td><%=r.getString("recovered")%></td>
                      <td><%=r.getString("description")%></td>
                       <td><%=r.getString("precautions")%></td>
                       <td><a href="delete.jsp?id=<%=r.getString("id")%>"><input type="button" value="DELETE"></a></td>
                       
                       
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