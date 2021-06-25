<br><br><br><br><br><br>	</div>
	</div>
<!-- //mail -->
<!-- //main -->


<!-- Footer -->
<div class="footer w3ls">
	<div class="container">
		<div class="footer-main">
			<div class="footer-top">
				<div class="col-md-4 services-grids">
					
				</div>
				<div class="col-md-4 ftr-grid">
					<div class="logo-fo">
						<div class="logo-w3l">
							<i class="fa fa-stethoscope" aria-hidden="true"></i>
						</div>
						<h2><a href="index.html">EasyMigrate &<span>CoviTrace </span></a></h2>
					</div>
				</div>
				<div class="col-md-4 ftr-grid fg2">
				
					
				<div class="clearfix"> </div>
			</div>
				<div class="right-w3l">
					<ul class="top-links">
						<li class="get-w3"><a href="mail.html"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>Get In Touch</a></li>
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
			<div class="copyrights">
				<p>&copy; 2021. All Rights Reserved.  </p>
			</div>
		</div>
	</div>
</div>
<!-- //Footer -->

<!-- js-scripts -->			
	
		<!-- js -->
			<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
			<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
		<!-- //js -->
		
		<!-- jarallax-js -->
			<script src="js/jarallax.js"></script>
			<script src="js/SmoothScroll.min.js"></script>
			<script type="text/javascript">
				/* init Jarallax */
				$('.jarallax').jarallax({
					speed: 0.5,
					imgWidth: 1366,
					imgHeight: 768
				})
			</script>
		<!-- //jarallax-js -->
		
		<!-- for-Map -->
			<!-- script for tabs -->
		<script type="text/javascript">
			$(function() {
			
				var menu_ul = $('.faq > li > ul'),
					   menu_a  = $('.faq > li > a');
				
				menu_ul.hide();
			
				menu_a.click(function(e) {
					e.preventDefault();
					if(!$(this).hasClass('active')) {
						menu_a.removeClass('active');
						menu_ul.filter(':visible').slideUp('normal');
						$(this).addClass('active').next().stop(true,true).slideDown('normal');
					} else {
						$(this).removeClass('active');
						$(this).next().stop(true,true).slideUp('normal');
					}
				});
			
			});
		</script>
		<!-- script for tabs -->
		<!-- //for-Map -->
		
<!-- //js-scripts -->
</body>
</html>