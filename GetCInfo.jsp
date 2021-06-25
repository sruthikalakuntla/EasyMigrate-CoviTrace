
<%@ include file="uheader.jsp"%>

<div id="homecontent">
  <div class="wrapper">
      <CENTER>
            <%
           String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
          %>
     
      <h2>Covid Information</h2><br><br><br>
             <table style="margin-bottom: 200px;" id="tab">
                    <tr>
                       
                        <th>COUNTRY</th>
                         <th>STATE</th>
                        <th>TOTAL CASES</th>
                        <th>DEATHS</th>
                        <th>RECOVERED</th>
                        <th>DESCRIPTION</th>
                       <th>PRECAUTIONS</th>
                       
                    </tr>
                    <%
                    try{
                    String query="select * from covid";
                    ResultSet r=Queries.getExecuteQuery(query);
                    while(r.next()){
                           %>
                      <tr>
                          
                          <td><%=r.getString("country")%></td>
                          <td><%=r.getString("center")%></td>
                      <td style="background: lightgoldenrodyellow;"><%=r.getString("total_cases")%></td>
                      <td style="background: lightsalmon;"><%=r.getString("deaths")%></td>
                      <td style="background: lightgreen;"><%=r.getString("recovered")%></td>
                      <td><%=r.getString("description")%></td>
                       <td style="background: lightgreen;"><%=r.getString("precautions")%></td>
                         
                       
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
