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
    <link rel="stylesheet" href="adminResources/css/bootstrap.css">

    <link rel="stylesheet" href="adminResources/css/profile.css">


 		<link href="adminResources/css/style.default.css" rel="stylesheet">
        <link href="adminResources/css/morris.css" rel="stylesheet">
        <link href="adminResources/css/select2.css" rel="stylesheet" />


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/minus.png">
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
                                    <li>Edit Profile</li>
                                </ul>
                                <h4>Edit Profile</h4>
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
                    <div class="contentpanel">
                        
                        <div class="row">
                            <div class="col-md-12">
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">Edit Profile</h4>
                                        <p>Please provide your Personal Information.It will be confidential</p>
                                    </div><!-- panel-heading -->
                                    <div class="panel-body">
                                    <div class="body-nest" id="Blank_Page_Content">




                                    <div class="row">


                                        <!-- left column -->
                                        <div class="col-md-3">
                                            <div class="text-center">
                                                <img src="http://placehold.it/150" class="avatar img-circle" alt="avatar">
                                                <h6>Upload a different photo...</h6>

                                                <div class="input-group">
                                                    <span class="input-group-btn">
                                                        <span class="btn btn-primary btn-file">
                                                            Browse
                                                            <input type="file" multiple="">
                                                        </span>
                                                    </span>
                                                    <input type="text" class="form-control">
                                                </div>

                                            </div>
                                        </div>

                                        <!-- edit form column -->
                                        <div class="col-md-9 personal-info">
                                            <h3>Personal info</h3>

                                            <form class="form-horizontal" role="form">
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">First name:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" value="Jane" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Last name:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" value="Bishop" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Company:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" value="" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Email:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" value="janesemail@gmail.com" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Time Zone:</label>
                                                    <div class="col-lg-8">
                                                        <div class="ui-select">
                                                            <select id="user_time_zone" class="form-control">
                                                                <option value="Hawaii">(GMT-10:00) Hawaii</option>
                                                                <option value="Alaska">(GMT-09:00) Alaska</option>
                                                                <option value="Pacific Time (US &amp; Canada)">(GMT-08:00) Pacific Time (US &amp; Canada)</option>
                                                                <option value="Arizona">(GMT-07:00) Arizona</option>
                                                                <option value="Mountain Time (US &amp; Canada)">(GMT-07:00) Mountain Time (US &amp; Canada)</option>
                                                                <option value="Central Time (US &amp; Canada)" selected="selected">(GMT-06:00) Central Time (US &amp; Canada)</option>
                                                                <option value="Eastern Time (US &amp; Canada)">(GMT-05:00) Eastern Time (US &amp; Canada)</option>
                                                                <option value="Indiana (East)">(GMT-05:00) Indiana (East)</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label">Username:</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control" value="janeuser" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label">Password:</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control" placeholder="11111122333" type="password">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label">Confirm password:</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control" value="11111122333" type="password">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label"></label>
                                                    <div class="col-md-8">
                                                        <input class="btn btn-primary" value="Save Changes" type="button">
                                                        <span></span>
                                                        <input class="btn btn-default" value="Cancel" type="reset">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                    
										</div>
										</div>
										</div>
										</div>
										
</body>
</html>