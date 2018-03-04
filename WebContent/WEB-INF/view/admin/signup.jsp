<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Chain Responsive Bootstrap3 Admin</title>

        <link href="adminResources/css/style.default.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
        <script>
        function matchEmail()
        {
        var email=document.getElementById('registrationEmail').value;
        var confirm_email=document.getElementById('registrationConfirmEmail').value;
	        if(email!=confirm_email)
	        {
	         alert("Not matching");
	         document.getElementById('registrationConfirmEmail').value="";
	        }
        }
        function verifyEmail()
        {
         var email=document.getElementById('registrationEmail').value;
         var htp=new XMLHttpRequest();
	  	   htp.onreadystatechange=function()
	  	   {
	  	 	  if(this.readyState == 4 && this.status == 200)
	  	 		  {
	  	 		   if(this.responseText.trim() =="Exists")
	  	 			   {
	  	 			    alert("Email-Id alredy Exists");
	  	 			    document.getElementById("registrationEmail").value="";
	  	 			   }
	  	 		   
	  	 		   
	  	 		  }
	  	   };
        htp.open("GET","verifyEmailForReg.htm?email="+email,true);
        htp.send();
        }

        </script>
    </head>

    <body class="signin">
        
        
        <section>
            
            <div class="panel panel-signup">
                <div class="panel-body">
                    <div class="logo text-center">
                        <img src="adminResources/images/logo-primary.png" alt="Chain Logo" >
                    </div>
                    <br />
                    <h4 class="text-center mb5">Create a new account</h4>
                    <p class="text-center">Please enter your credentials below</p>
                    
                    <div class="mb30"></div>
                    
                <!--      <form action="registrationInsert.htm" method="post">-->
                <form:form action="insert.htm" method="post" modelAttribute="registration">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                   <!--   <input type="text" class="form-control" placeholder="Enter Firstname">-->
                                    <form:input path="registrationFname" cssClass="form-control" placeholder="Enter Firstname"/>
                                </div><!-- input-group -->
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                   <!--   <input type="text" class="form-control" placeholder="Enter Lastname"> -->
                                     <form:input path="registrationLname" cssClass="form-control" placeholder="Enter Lastname"/>
                                </div><!-- input-group -->
                            </div>
                        </div><!-- row -->
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                   <!--   <input type="email" class="form-control" placeholder="Enter Email Address"> -->
                                    <form:input name="registrationEmail" path="registrationEmail" id="registrationEmail" title="enter valid data" class="form-control" placeholder="Enter Email Address"  onblur="verifyEmail()"  />
                                    
                                </div><!-- input-group -->
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <input type="text" class="form-control" placeholder="Re Enter Email" id="registrationConfirmEmail" onblur="matchEmail()">
                                </div><!-- input-group -->
                            </div>
                        </div><!-- row -->
                        <br />
                        <div class="clearfix">
                            <div class="pull-left">
                                <div class="ckbox ckbox-primary mt5">
                                    <input type="checkbox" id="agree" value="1" required>
                                    <label for="agree">I agree with <a href="">Terms and Conditions</a></label>
                                </div>
                            </div>
                            <div class="pull-right">
                                <input type="submit" name="btn" id="btn" value="Create New Account"><i class="fa fa-angle-right ml5"></i></input>
                            </div>
                        </div>
                        </form:form>
                    <!--</form> -->
                    
                </div><!-- panel-body -->
                <div class="panel-footer">
                    <a href="index.htm" class="btn btn-primary btn-block">Already a Member? Sign In</a>
                </div><!-- panel-footer -->
            </div><!-- panel -->
            
        </section>


        <script src="adminResources/js/jquery-1.11.1.min.js"></script>
        <script src="adminResources/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="adminResources/js/bootstrap.min.js"></script>
        <script src="adminResources/js/modernizr.min.js"></script>
        <script src="adminResources/js/pace.min.js"></script>
        <script src="adminResources/js/retina.min.js"></script>
        <script src="adminResources/js/jquery.cookies.js"></script>

        <script src="adminResources/js/custom.js"></script>

    </body>
</html>
	