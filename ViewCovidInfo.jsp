
<%@ include file="oheader.jsp"%>


<div id="homecontent">
  <div class="wrapper">
      <CENTER>         <%
           String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
          %>
     
      <h2>View Covid info</h2><br>
             <table id="tab" width="100%">
                    <tr>
                        <th>COUNTRY</th>
                         <th>STATE</th>
                        <th>TOTAL CASES</th>
                        <th>DEATHS</th>
                        <th>RECOVERED</th>
                        <th>UPDATE</th>
                    </tr>
                    <%
                    try{
                    String query="select * from covid where uid='"+id+"'";
                    ResultSet r=Queries.getExecuteQuery(query);
                    while(r.next()){
                           %>
                      <tr>
                          
                          <td><%=r.getString("country")%></td>
                          <td><%=r.getString("center")%></td>
                      <td><%=r.getString("total_cases")%></td>
                      <td><%=r.getString("deaths")%></td>
                      <td><%=r.getString("recovered")%></td>

                       <td><a href="Update.jsp?id=<%=r.getString("id")%>"><input type="button" value="UPDATE"></a></td>
<tr  ><td colspan=7>          <strong>DESCRIPTION:
</strong>
          
                     <%=r.getString("description")%>
					<br>          
                       <strong>PRECAUTIONS:</strong>
                     <%=r.getString("precautions")%></td>
                       
                       
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
