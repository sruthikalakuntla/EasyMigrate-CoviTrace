
<%@ include file="header.jsp"%>


<div id="homecontent">

  <div class="wrapper">
      <CENTER>
      <h3>OWNER LOGIN HERE</h3>
<br><br>      
       <form action='OwnerLoginAction.jsp' method='post'>
                <table id="tab" width="50%">
                 <tr><th>UserName</th><td><input type='text' name='uname' required='' placeholder="UserName" class="form-control"></td><tr/>
                
                    <tr><th>Password</th><td><input type='password' name='pwd' required='' placeholder="Password" class="form-control"></td><tr/>
           
                    <tr><th><input type='submit' value='Login' class="form-control"></th>
                    <td><a href='OwnerReg.jsp'>Register</a></td><tr/>    </table>
            </form>   
      </CENTER>
  </div>
</div>

<%@ include file="footer.jsp"%>

