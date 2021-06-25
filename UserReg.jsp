
<%@ include file="header.jsp"%>




<!-- ####################################################################################################### -->
<div id="homecontent">
  <div class="wrapper">
      <CENTER>
      <h3>USER REGISTRATION HERE</h3>
      <br>
       <form action='UserRegAction.jsp' method='post'>
                <table id="tab" width="50%"> 
				<tr><th>Name</th><td><input class="form-control"  type='text' name='name' required='' placeholder="Name"></td><tr/>
                   
                    <tr><th>Email</th><td><input class="form-control"  type='email' name='email' required='' placeholder="Email"></td><tr/>
                     <tr><th>Mobile</th><td><input class="form-control"  type='number' name='mobile' required='' placeholder="Mobile"></td><tr/>
                
                    <tr><th>Address</th><td><input class="form-control"  type='text' name='address' required='' placeholder="Address"></td><tr/>
                   
                    <tr><th>UserName</th><td><input class="form-control"  type='text' name='uname' required='' placeholder="UserName"></td><tr/>
                
                    <tr><th>Password</th><td><input class="form-control"  type='password' name='pwd' required='' placeholder="Password"></td><tr/>
           
                    <tr><th><input class="form-control"  type='submit' value='Register'></th>
                    <td><a href='user.jsp'>Login</a></td><tr/>
                </table>
            </form>   
            
      </CENTER>
  </div>
</div>
