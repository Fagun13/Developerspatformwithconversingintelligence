<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>Developers Platform With Conversing Intelligence</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.js"></script>

    <link rel="stylesheet" href="adminResources/css/style.css">
    <link rel="stylesheet" href="adminResources/css/loader-style.css">
   

    <link rel="stylesheet" href="adminResources/css/profile.css">


 		<link href="adminResources/css/style.default.css" rel="stylesheet">
        <link href="adminResources/css/morris.css" rel="stylesheet">
        <link href="adminResources/css/select2.css" rel="stylesheet" />


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
   
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
                                    <li>Profile</li>
                                </ul>
                                <h4>Profile</h4>
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
                    <div class="contentpanel">
                        
                        <div class="row">
                            <div class="col-md-12">
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">Profile</h4>
                                        <p>Please provide your Personal Information.It will be confidential</p>
                                    </div><!-- panel-heading -->
                                    <div class="panel-body">
                                        <div class="row">
                                                                <div class="form-group">
                                                 <div class="col-xs-12 col-sm-4 text-center">

                                    <ul class="list-group">
                                       <li class="list-group-item text-left">
                                             <a href="EditAdminProfile.htm"><span class="entypo-user"></span>&nbsp;&nbsp;Edit Profile</a></li>
                                        <li class="list-group-item text-center">
                                            <img src="http://api.randomuser.me/portraits/men/10.jpg" alt="" class="img-circle img-responsive img-profile">

                                        </li>
                                
                                    </ul>

                                </div>
                                          
                                      
                                       
                       <div class="col-xs-8 col-sm-8 profile-name">
                                    <h2>Dave Mattew
                                       
                                    </h2>
                                    <hr>

                                    <dl class="dl-horizontal-profile">
                                        <dt>User Id</dt>
                                        <dd>eko.sulis</dd>

                                        <dt>Name</dt>
                                        <dd>Eko Sulistyo</dd>

                                        <dt>Email</dt>
                                        <dd>eko.sulistyo@yahoo.com</dd>

                                        <dt>Phone</dt>
                                        <dd>081 725 xxx</dd>

                                        <dt>About</dt>
                                        <dd>Web Designer / UI</dd>

                                        <dt>Hobbies</dt>
                                        <dd>Read, out with friends, listen to music, draw and learn new things</dd>

                                        <dt>Skills</dt>
                                        <dd>
                                            <span class="tags">html5</span>
                                            <span class="tags">css3</span>
                                            <span class="tags">jquery</span>
                                            <span class="tags">bootstrap3</span>
                                        </dd>
                                    </dl>
                                </div>
                                       </div><!-- row --> 
                                         </div><!-- form-group -->                    
                                      </div><!-- panel-body -->
                                    
                                      </div>
                                       
                                    </div><!-- panel-footer -->  
                                </div><!-- panel -->
                              
                                
                            </div><!-- col-md-6 -->
        
                                                    </div><!--row -->
      
                            
                    </div><!-- contentpanel -->
                    
                
        </section>


                 <!-- MAIN EFFECT -->
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
