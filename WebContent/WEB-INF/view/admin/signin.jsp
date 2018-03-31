<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Developers Platform With Conversing Intelligence</title>

        <link href="adminResources/css/style.default.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
        <script>
        function verify()
        {
        	var flag=document.getElementById("flag").value;
        	if(flag.trim()=="error")
        		{
        	    	alert("username and password not matched");
        	    	document.getElementById("flag").value=null;
        		}
        	
        }
        </script>
    </head>

    <body class="signin" onload="verify()">
        
        
        <section>
            <input type="hidden" value="${param.flag}" id="flag">
            
            <div class="panel panel-signin">
                <div class="panel-body">
                    <div class="logo text-center">
                        <img src="adminResources/images/logo-primary.png" alt="DPCI Logo" >
                    </div>
                    <br />
                    <h4 class="text-center mb5">Already a Member?</h4>
                    <p class="text-center">Sign in to your account</p>
                    
                    <div class="mb30"></div>
                    
                    <form action="j_spring_security_check" method="post">
                        <div class="input-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input type="text" name="username" class="form-control" placeholder="Username">
                        </div><!-- input-group -->
                        <div class="input-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input type="password" name="password" class="form-control" placeholder="Password">
                        </div><!-- input-group -->
                        
                        <div class="clearfix">
                            <div class="pull-left">
                                <div class="ckbox ckbox-primary mt10">
                                    <input type="checkbox" id="rememberMe" value="1">
                                    <label for="rememberMe">Remember Me</label>
                                </div>
                            </div>
                            <div class="pull-right">
                                <button type="submit" class="btn btn-success">Sign In <i class="fa fa-angle-right ml5"></i></button>
                            </div>
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
                                              
                    </form>
                    
                </div><!-- panel-body -->
                <div class="panel-footer">
                    <a href="signup.htm" class="btn btn-primary btn-block">Not yet a Member? Create Account Now</a>
                </div><!-- panel-footer -->
                <div class="panel-footer">
                    <a href="forgetPassword.htm" class="btn btn-primary btn-block">Forget Password?</a>
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
