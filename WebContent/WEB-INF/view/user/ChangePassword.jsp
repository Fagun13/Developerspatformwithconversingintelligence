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

        <title>Developers Platform With Conversing Intelligence</title>

        <link href="adminResources/css/style.default.css" rel="stylesheet">
        <link href="adminResources/css/select2.css" rel="stylesheet" />

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
        <script>
        function verify() 
        {
		var newPassword=document.getElementById("newPassword").value;
		var retypeNewPassword=document.getElementById("retypeNewPassword").value;
		if(newPassword!=retypeNewPassword)
			{
			  alert("Password and retype password not matched");
			}
		}
        function verifyOldPass()
        {
        	  var pword=document.getElementById("oldPassword").value;
        	   	   var htp=new XMLHttpRequest();
        	   htp.onreadystatechange=function()
        	   {
        	 	  if(this.readyState == 4 && this.status == 200)
        	 		  {
        	 		   if(this.responseText.trim() =="Wrong password")
        	 			   {
        	 			   alert("Wrong password");
        	 			    document.getElementById("oldPassword").value="";
        	 			   }
        	 		   
        	 		   
        	 		  }
        	   };
        	   htp.open("GET","verify.htm?password="+pword,true);
        	   htp.send();
        }
        </script>
    </head>

    <body>
                <jsp:include page="header.jsp"></jsp:include>
        <section>
            <div class="mainwrapper">
                <jsp:include page="menu.jsp"></jsp:include>
                <div class="mainpanel">
                    <div class="pageheader">
                        <div class="media">
                            <div class="pageicon pull-left">
                                <i class="fa fa-pencil"></i>
                            </div>
                            <div class="media-body">
                                <ul class="breadcrumb">
                                    <li><a href=""><i class="glyphicon glyphicon-home"></i></a></li>
                                    <li><a href="">Forms</a></li>
                                    <li>Change Password</li>
                                </ul>
                                <h4>Change Password</h4>
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
                    <div class="contentpanel">
                        
                        <div class="row">
                            <div class="col-md-6">
                                <form:form id="basicForm" action="SaveChangePassword.htm" method="post" modelAttribute="login">
                                                    
                                                     		
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">Basic Form Validation</h4>
                                        <p>Please provide your name, email address (won't be published) and a comment.</p>
                                    </div><!-- panel-heading -->
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Old Password <span class="asterisk">*</span></label>
                                                <div class="col-sm-9">
                                                    <input type="password" name="oldpassword" id="oldPassword" class="form-control" placeholder="old password" required onblur="verifyOldPass()"/>
                                                </div>
                                            </div><!-- form-group -->
                                          
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">New Password <span class="asterisk">*</span></label>
                                                <div class="col-sm-9">
                                                    <form:password id="newPassword" path="password" cssClass="form-control" placeholder="Type your new password"/>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                             <div class="form-group">
                                                <label class="col-sm-3 control-label">Re-Enter Password <span class="asterisk">*</span></label>
                                                <div class="col-sm-9">
                                                    <input type="password" id="retypeNewPassword"  class="form-control" placeholder="ReType password" required onblur="verify()"/>
                                                </div>
                                            </div><!-- form-group -->
                                         
                                        </div><!-- row -->
                                    </div><!-- panel-body -->
                                    <div class="panel-footer">
                                      <div class="row">
                                        <div class="col-sm-9 col-sm-offset-3">
                                            <input type="submit" value="Submit" class="btn btn-primary mr5">
                                            <button type="reset" class="btn btn-dark">Reset</button>
                                        </div>
                                      </div>
                                    </div><!-- panel-footer -->  
                                </div><!-- panel -->
                                </form:form>
                                
                            </div><!-- col-md-6 -->    
                        </div><!--row -->
      
      
                    </div><!-- contentpanel -->
                    
                </div><!-- mainpanel -->
            </div><!-- mainwrapper -->
        </section>


        <script src="adminResources/js/jquery-1.11.1.min.js"></script>
        <script src="adminResources/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="adminResources/js/jquery-ui-1.10.3.min.js"></script>
        <script src="adminResources/js/bootstrap.min.js"></script>
        <script src="adminResources/js/modernizr.min.js"></script>
        <script src="adminResources/js/pace.min.js"></script>
        <script src="adminResources/js/retina.min.js"></script>
        <script src="adminResources/js/jquery.cookies.js"></script>
        
        <script src="adminResources/js/select2.min.js"></script>
        <script src="adminResources/js/jquery.validate.min.js"></script>

        <script src="adminResources/js/custom.js"></script>
        
        <script>
            jQuery(document).ready(function(){
              
                // Basic Form
                jQuery("#basicForm").validate({
                    highlight: function(element) {
                        jQuery(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                    },
                    success: function(element) {
                        jQuery(element).closest('.form-group').removeClass('has-error');
                    }
                });
              
                // Error Message In One Container
                jQuery("#basicForm2").validate({
                    errorLabelContainer: jQuery("#basicForm2 div.errorForm")
                });
              
                // With Checkboxes and Radio Buttons
                
                jQuery('#genderError').attr('for','gender');
                jQuery('#intError').attr('for','int[]');
                
                jQuery("#basicForm3").validate({
                    highlight: function(element) {
                        jQuery(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                    },
                    success: function(element) {
                        jQuery(element).closest('.form-group').removeClass('has-error');
                    }
                });
                
                jQuery("#basicForm4").validate({
                    highlight: function(element) {
                        jQuery(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                    },
                    success: function(element) {
                        jQuery(element).closest('.form-group').removeClass('has-error');
                    },
                    ignore: null
                });
                
                // Validation with select boxes
                jQuery("#flowers, #fruits").select2({
                    minimumResultsForSearch: -1
                });
              
            });
        </script>

    </body>
</html>
