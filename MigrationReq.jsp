<%@ include file="uheader.jsp"%>



<div id="homecontent">
  <div class="wrapper">
      <CENTER>
     
            <%
           String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
        
String cid=request.getParameter("id");
          %>

      <h2>MIGRATE REQUEST</h2><br><br>
      <form action="migrateaction.jsp" method="post">
             <table style="margin-bottom: 200px;" id="tab">
                   
                   
                      
                          <tr><th>USER ID</th><td><input type="text" name="uid" value="<%=username%>" disabled=""></td></tr>
                      <tr><th>MIGRATE FROM</th><td><input type="text" name="mfrom" list="DISTRICTS">
                        <datalist id="DISTRICTS">
                          <option value="Adilabad">
                          <option value="Bhadradri Kothagudem">
                            <option value="Hyderabad">
                              <option value="Jagtial">
                                <option value="Jangaon">
                                  <option value="Jogulamba Gadwal">
                                    <option value="Kamareddy">
                                      <option value="Karimnagar">
                                        <option value="Khammam">
                                          <option value="Komaram Bheem Asifabad">
                                            <option value="Mahabubabad">
                                              <option value="Mahabubnagar">
                                                <option value="Mancherial">
                                                  <option value="Medak">
                                                    <option value="Medchal">
                                                      <option value="Nagarkurnool">
                                                        <option value="Nalgonda">
                                                          <option value="Nirmal">
                                                            <option value="Nizamabad">
                                                              <option value="Peddapalli">
                                                                <option value="Rajanna Sircilla">
                                                                  <option value="Rangareddy">
                                                                    <option value="Sangareddy">
                                                                      <option value="Siddipet">
                                                                        <option value="Suryapet">
                                                                        <option value="Vikarabad">
                                                                          <option value="Wanaparthy">
                                                                            <option value="Warangal (Rural)">
                                                                              <option value="Warangal (Urban)">
                                                                                <option value="Yadadri Bhuvanagiri">
                                                                                 

                                                                                    
                        </datalist></td></tr>
                          <tr> <th>MIGRATE TO</th><td><input type="text" name="mto" list="DISTRICTS">
                            <datalist id="DISTRICTS">
                              <option value="Adilabad">
                              <option value="Bhadradri Kothagudem">
                                <option value="Hyderabad">
                                  <option value="Jagtial">
                                    <option value="Jangaon">
                                      <option value="Jogulamba Gadwal">
                                        <option value="Kamareddy">
                                          <option value="Karimnagar">
                                            <option value="Khammam">
                                              <option value="Komaram Bheem Asifabad">
                                                <option value="Mahabubabad">
                                                  <option value="Mahabubnagar">
                                                    <option value="Mancherial">
                                                      <option value="Medak">
                                                        <option value="Medchal">
                                                          <option value="Nagarkurnool">
                                                            <option value="Nalgonda">
                                                              <option value="Nirmal">
                                                                <option value="Nizamabad">
                                                                  <option value="Peddapalli">
                                                                    <option value="Rajanna Sircilla">
                                                                      <option value="Rangareddy">
                                                                        <option value="Sangareddy">
                                                                          <option value="Siddipet">
                                                                            <option value="Suryapet">
                                                                            <option value="Vikarabad">
                                                                              <option value="Wanaparthy">
                                                                                <option value="Warangal (Rural)">
                                                                                  <option value="Warangal (Urban)">
                                                                                    <option value="Yadadri Bhuvanagiri">
                                                                                     
    
                                                                                        
                            </datalist></td></tr>
                          <tr><th>DATE</th> <td><input type="date" name="date"></td></tr>
                         
                      
                      </tr>
                  
                          
                          <tr><th></th><td><input type="submit" value="SUBMIT"></td></tr>
                </table>
      </form>
      </CENTER>
  </div>
</div>

<%@ include file="footer.jsp"%>

