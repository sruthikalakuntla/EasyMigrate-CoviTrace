

<%@ include file="oheader.jsp"%>


<!-- ####################################################################################################### -->
<div id="homecontent">
  <div class="wrapper">
      <CENTER>
                <%
           String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
        
String cid=request.getParameter("id");
          %>
      <h2>UPDATE COVID DETAILS</h2><br>
      <form action="updataction.jsp" method="post">
             <table td="tab" width="60%">
                   
                    <%
                    try{
                    String query="select * from covid where id='"+cid+"'";
                    ResultSet r=Queries.getExecuteQuery(query);
                    if(r.next()){
                           %>
                        
                      
                          <tr><th>COUNTRY</th><td><input class="form-control"  type="text" name="country" value="<%=r.getString("country")%>" disabled=""></td></tr>
                      <tr><th>TOTAL CASES</th><td><input class="form-control"  type="text" name="cases" value="<%=r.getString("total_cases")%>"></td>
                          <tr> <th>DEATHS</th><td><input class="form-control"  type="text" name="deaths" value="<%=r.getString("deaths")%>"></td></tr>
                          <tr><th>RECOVERED</th> <td><input class="form-control"  type="text" name="recovered" value="<%=r.getString("recovered")%>"></td></tr>
                          <tr><th>DESCRIPTION</th><td><textarea class="form-control"  cols="30" rows="15" name="description"><%=r.getString("description")%></textarea></td></tr>
                          <tr> <th>PRECAUTIONS</th> <td><textarea class="form-control"  cols="30" rows="15" name="precaution"><%=r.getString("precautions")%></textarea></td></tr>
                       
                      
                      </tr>
                   <% }
                    
                    }catch(Exception e){
                        out.println(e);
}%>
                          
                          <tr><th></th><td><input class="form-control"  type="submit" value="SUBMIT"></td></tr>
                </table>
      </form>
      </CENTER>
  </div>
</div>

<%@ include file="footer.jsp"%>

