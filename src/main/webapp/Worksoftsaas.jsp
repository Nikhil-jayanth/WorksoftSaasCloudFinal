<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%
String userName = (String)session.getAttribute("name");
if(null != userName)
	response.sendRedirect("LoggedIn.jsp");
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Worksoft SaaS</title>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        <script src="assets/js/backfix.min.js"></script>
		<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<style>.carousel-inner > .item > img,.carousel-inner > .item > a > img{width: 60%;margin: auto;}</style>
   		<script type="text/javascript">
   			bajb_backdetect.OnBack = function()
   			{window.history.back=function(){document.location='http://localhost:8080/';};}
   		</script>
    </head>
<body>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="Worksoftsaas.jsp">Worksoft Saas</a> 
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="Worksoftsaas.jsp">Home</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li>
						<button type="button" class="btn btn-success" id="myBtnregister"><span class="glyphicon glyphicon-user"> Register </span></button>
											<div class="modal fade" id="myModalregister" tabindex="-1" role="dialog">
    												<div class="modal-dialog">
      													<!-- Modal content-->
      													<div class="modal-content">
        													<div class="modal-header" style="padding:30px 50px;">
          														<button type="button" class="close" data-dismiss="modal">&times;</button>
          														<h4 Style="color:green;"><span class="glyphicon glyphicon-registration-mark"></span> Register to get Access</h4>
        													</div>
        													<div class="modal-body" style="padding:40px 50px;">
         											 			<form role="form" name="register" id="registerForm" action ="RegisterController" method="post">
         											 				<div class="form-group">
              															<label for="firstname"> Customer Company Name </label>
              															<input type="text" name="form-first-name" onKeyPress="return ValidateAlpha(event);" required title="Enter Only character min 3 - max 20 char" pattern="[a-zA-Z ]{3,20}" placeholder="company Name" class="form-control" id="form-first-name" />
            														</div>
            														<div class="form-group">
              															<label for="lastname">Admin UserId </label>
              															<input type="text" name="form-last-name" required title="pattern not matching ^[a-zA-Z0-9]*$" pattern="^[a-zA-Z0-9]*$" placeholder="Admin User Id" class="form-control" id="form-last-name" />
            														</div>
            														<div class="form-group">
              															<label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password </label>
              															<input type="password" name="form-password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" class="form-control" id="psw" placeholder="Password" />
            														</div>
           										 					<div class="form-group">
              															<label for="usrname"><span class="glyphicon glyphicon-user"></span> Email : </label>
              															<input type="text" name="form-email" required title="worksoft24_7saas@xyz.com" placeholder="Enter email : worksoft24_7saas@xyz.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control" id="usrname" /><br><span id="isE"> </span>
            														</div>
            														<div class="form-group">
              															<label for="usrname"><span class="glyphicon glyphicon-user"></span> No of Users</label>
              															<input type="text" name="form-No of Users"  placeholder="no of users needed for cloud tanancy" required pattern="[0-9]{1,20}" class="form-control" id="usrname"/><br><span id="isE"> </span>
            														</div>
              															<P align="center"><button type="submit" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-pencil"></span> Create Cloud Tenancy </button></P>
          											 			</form> 
        													</div>
       														<div class="modal-footer">
          														<button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        													</div>
      												</div>
   												</div>
  											</div> 
					</li>
					<li>
						<ul class="nav pull-right">
							<li class="dropdown" id="menuLogin">
  											<button type="button" class="btn btn-success" id="myBtnlogin"><span class="glyphicon glyphicon-log-in"> Login </span></button>
  											<!-- Modal -->
  											<div class="modal fade" id="myModallogin" tabindex="-1" role="dialog">
    												<div class="modal-dialog">
      												<!-- Modal content-->
      												<div class="modal-content">
        												<div class="modal-header" style="padding:35px 50px;">
          													<button type="button" class="close" data-dismiss="modal">&times;</button>
          													<h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        												</div>
        												<div class="modal-body" style="padding:40px 50px;">
         											 		<form role="form" action ="LoginUser" method="post">
           										 				<div class="form-group">
              														<label for="usrname"><span class="glyphicon glyphicon-user"></span> Customer UserName </label>
              														<input type="text" name="form-email" required title="abc@xyz.com" placeholder="Enter email : abcd@xyz.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control" id="usrname" />
            													</div>
            													<div class="form-group">
              														<label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password </label><br>
              														<input type="password" name="form-logpassword" required required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" class="form-control" id="psw" placeholder="Password" />
            													</div>
              														<p align="center"><button type="submit" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-off"></span> Login</button></p>
          											 		</form>
        												</div>
       													<div class="modal-footer">
          													<button type="submit" class="btn btn-danger btn-sm btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
         								 					<p> Not a member ? <button type="button" class="btn btn-info btn-sm" id="myBtnregister2"><span class="glyphicon glyphicon-user"> SignUp </span></button></p>			
          													<p> Forgot <button type="button" class="btn btn-info btn-sm" id="myBtnregister3"><span class="glyphicon glyphicon-eye-open"></span> Password?</button></p>		
        													</div>
      													</div>
   													</div>
  												</div>
							</li>
						</ul>
																		<!-- Modal -->
  																		<div class="modal fade" id="myModalforgot" tabindex="-1" role="dialog">
    																		<div class="modal-dialog">
      																			<!-- Modal content-->
      																			<div class="modal-content">
        																			<div class="modal-header" style="padding:30px 50px;">
          																				<button type="button" class="close" data-dismiss="modal">&times;</button>
          																				<h4><span class="glyphicon glyphicon-eye-close"></span> Forgot Password </h4>
        																			</div>
        																			<div class="modal-body" style="padding:40px 50px;">
         											 									<form role="form" action ="ForgotUsernameController" method="post">
           										 											<div class="form-group">
              																					<label for="usrname"><span class="glyphicon glyphicon-user"></span> UserName </label>
              																					<input type="text" name="form-email" required title="abc@xyz.com" placeholder="Enter email : abcd@xyz.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control" id="usrname" />
            																				</div>
              																					<P align="center"><button type="submit" class="btn btn-success btn-lg" id="myBtnregister14"><span class="glyphicons glyphicons-fingerprint-ok"></span> Generate Verification Code </button></P>
          											 									</form>
        																			</div>
       																				<div class="modal-footer">
          																				<button type="submit" class="btn btn-danger btn-sm btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel </button>
        																			</div>
      																			</div>
   																			</div>
  																		</div>
					</li>
				</ul>
			</div>
			<script>$(document).ready(function(){
									$("#myBtnlogin").click(function(){$("#myModallogin").modal();});
									$("#myBtnregister").click(function(){$("#myModalregister").modal();});
									$("#myBtnregister2").click(function(){showDialog2();});
									$("#myBtnregister3").click(function(){showDialog3();});
									function showDialog2() {$("#myModallogin").modal("hide");$("#myModalregister").modal();}
									function showDialog3() {$("#myModallogin").modal("hide");$("#myModalforgot").modal();}
									});
									function ValidateAlpha(evt){
		       							 var keyCode = (evt.which) ? evt.which : evt.keyCode
		       							 if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
		       							 return false;
		            							return true;
		    						}
			</script>
		</nav>
<div class="container-fluid" align = "center">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
		</ol>
    <!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="https://image.ibb.co/k05sLQ/Slide5.jpg" alt="sample image 1">
			</div>
			<div class="item">
				<img src="https://image.ibb.co/ewinLQ/Slide2.jpg" alt="smaple image 2">
			</div>
		</div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br/><br/><br/>
</body>
</html>