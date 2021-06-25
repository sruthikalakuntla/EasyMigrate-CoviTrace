
<%@ include file="header.jsp"%>

					<table align=left cellspacing=20 ><tr><td><td>
	                  
					      <%
                                                       String message=request.getParameter("message");
                                                     
													    if(message!=null )
                                                       {
                                                               out.println("<script type=text/javascript> alert('Registration successful!!');</script>");
                                                       }
                                               %>


					  <%
                                                       String m=request.getParameter("m");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>

<div class="jarallax mail" id="mail">
		<div class="container">
			<h3 class="mail-w3">User Login<span></span></h3>
			<div class="w3agile_mail_grids">
				<div class=" w3agile_mail_grid">
					<form action="UserLogAction.jsp" method="post">
						<input type="text" placeholder="User id" name="uname" required="">
						<input type="password" placeholder="Password" name="pwd" required="">
						<div class="con-form text-center">
							<input type="submit" value="Login">
						</div>
					</form><br><br>
<a href='UserReg.jsp'>Register</a>
				</div>
			</div>
		</div>
	</div>
<%@ include file="footer.jsp"%>