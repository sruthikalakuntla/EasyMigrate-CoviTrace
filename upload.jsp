
<%@ include file="oheader.jsp"%>
<!-- ####################################################################################################### -->
<div id="homecontent">
  <div class="wrapper">
      <CENTER>
          <%
           String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
          %>
      <h3>WRITE COVID INFO </h3>
      <form action="CovidAction.jsp" method="post">
          <table id="tab">
              <tr><th>NAME</th><td><input class="form-control"  type="text" name="uname" value="<%=username%>" disabled=""></td></tr>
               <tr><th>STATE</th><TD><input class="form-control"  type="text" name="ccenter" required=""></TD></tr>
              <tr><th>COUNTRY</th><TD><input class="form-control"  type="text" name="country" required=""></TD></tr>
               <tr><th>TOTAL COVID CASES</th><TD><input class="form-control"  type="text" name="ccases" required=""></TD></tr>
                <tr><th>DEATHS</th><TD><input class="form-control"  type="text" name="deaths" required=""></TD></tr>
                 <tr><th>RECOVERED</th><TD><input class="form-control"  type="text" name="recovered" required=""></TD></tr>
                   <tr><th>DATE</th><TD><input class="form-control"  type="date" name="date" required=""></TD></tr>
               
                <tr><th>DESCRIPTION</th><TD><textarea cols="30" rows="8"  class="form-control" name="description" required=""></textarea></TD></tr>
                 <tr><th>PRECAUTIONS</th><TD><textarea cols="30" rows="8" class="form-control" name="precautions" required=""></textarea></TD></tr>
             
              <tr><th></th><td><input class="form-control"  type="submit" value="SUBMIT">
                  <input class="form-control"  type="reset" value="RESET"></td></tr>
          </table>
      </form>
       
      </CENTER>
  </div>
</div>
<%@ include file="footer.jsp"%>
