<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
		
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Developers Platform With Conversing Intelligence</title>
<link  rel="stylesheet" href="adminResources/css/style.default.css"/>
<link rel="stylesheet" href="adminResources/css/select2.css"  />
<script>
function selected()
{
	 var img1=document.getElementById("profilePic");
	var fileInput=document.getElementById("file1");
	
	var htp=new XMLHttpRequest();
	
	
	   htp.onreadystatechange=function()
	   {
		  
	 	  if(this.readyState == 4 && this.status == 200)
	 		  {
	 		   
	 		  alert("output is "+this.responseText);
	 			
	 		  }
	   };
  htp.open("POST","uploadUserProfile.htm",true);

  htp.setRequestHeader("Content-Type", "multipart/form-data");
  htp.send(fileInput);
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
							<li>Edit Profile</li>
						</ul>
						<h4>Edit Profile</h4>
					</div>
				</div>
				<!-- media -->
			</div>
			<!-- pageheader -->

			<div class="contentpanel">

				<div class="row">
					<div class="col-md-12">
						
										<form:form class="form-horizontal" 
											action="saveUserProfile.htm" method="post" modelAttribute="ProfileVO" enctype="multipart/form-data" >
						
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">Edit Profile</h4>
								<p>Please provide your Personal Information.It will be
									confidential</p>
							</div>
							<!-- panel-heading -->
							<div class="panel-body">
								<div class="body-nest" id="Blank_Page_Content">




									<div class="row">
							
										<form:hidden  path="profileId"/>
											<form:hidden path="registrationVO.registrationId" />
											<!-- left column -->
											<div class="col-md-3">
												<div class="text-center">

													 
                                            <img src="<%=request.getContextPath()%>/upload/profileImg/${sessionScope.reg.loginVO.username}/${sessionScope.profilePic}" name="profilePic" id="profilePic" alt="" class="img-circle img-responsive img-profile"> 
										 
										
										
													<h6>Upload a different photo...</h6>

													<div class="input-group">
														<span class="input-group-btn"> <span
															class="btn btn-default btn-file"> Browse 
															
															<input	type="file" name="file1" id="file1" class="form-control" onchange="selected()" />
														</span>
														</span>

													</div>												
													</div>
											</div>

											<!-- edit form column -->
											<div class="col-md-9 personal-info">
												<h3 style="margin-left: 135px; margin-bottom: 20px;">Personal
													info</h3>

												<div class="form-group">
													<label class="col-lg-3 control-label">First name:</label>
													<div class="col-lg-8">
														<form:input class="form-control"
															path="registrationVO.registrationFname"
															 readonly="true"/>
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-3 control-label">Last name:</label>
													<div class="col-lg-8">
														<form:input class="form-control"
															path="registrationVO.registrationLname"
															  readonly="true"/>
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-3 control-label">Username:</label>
													<div class="col-lg-8">
														<form:input  class="form-control"
															path="profileUsername" readonly="true" />
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-3 control-label">Description:</label>
													<div class="col-lg-8">
														<form:textarea cssClass="form-control"
															
															path="profileDescription"
															placeholder="Describe your self" />
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-3 control-label">Company:</label>
													<div class="col-lg-8">
														<form:input cssClass="form-control"
															 path="profileCompany"
															placeholder="Enter Compny name" />
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-3 control-label">Designation:</label>
													<div class="col-lg-8">
														<form:input cssClass="form-control"
															
															path="profileDesignation"
															palceholder="Enter phone number" />
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-3 control-label">Skills:</label>
													<div class="col-lg-8">
														<form:select cssClass="form-control" path="profileSkills" multiple="multiple"
															 >
															<form:option value="java">Java</form:option>
															<form:option value="html">HTML</form:option>
															<form:option value="css">CSS</form:option>
															<form:option value="javascript">JavaScript</form:option>
															<form:option value="spring">Spring</form:option>
															<form:option value="hibernate">hibernate</form:option>
														</form:select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-3 control-label">Hobbies:</label>
													<div class="col-lg-8">
														<form:textarea cssClass="form-control"
															 path="profileHobbies"
															palceholder="Tell about your hobbies" />
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-3 control-label">Phone Number:</label>
													<div class="col-lg-8">
														<form:input cssClass="form-control"
															path="profilePhoneNumer"
															palceholder="Enter phone number" />
													</div>
												</div>
												</div>
										</div>
										<div class="panel-footer">
													<div class="row">
													<div class="col-sm-9 col-sm-offset-3">
														<input type="submit" class="btn btn-primary" value="Save Changes"> 
														 <input type="reset" class="btn btn-default" value="Cancel">
													</div>
												</div>
											</div>
                                   
									</div>
								</div>
							</div>
						
						</form:form>
					</div>
					</div>
				</div>
			</div>
		</div>

</section>
		<script src="adminResources/js/jquery-1.11.1.min.js" type="text/javascript"></script> 
		<script src="adminResources/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script> 
		<script src="adminResources/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script> 
		<script src="adminResources/js/bootstrap.min.js" type="text/javascript"></script> 
		<script src="adminResources/js/modernizr.min.js" type="text/javascript"></script> 
		<script src="adminResources/js/pace.min.js" type="text/javascript"></script> 
		<script src="adminResources/js/retina.min.js" type="text/javascript"></script> 
		<script src="adminResources/js/jquery.cookies.js" type="text/javascript"></script> 
		<script src="adminResources/js/select2.min.js" type="text/javascript"></script> 
		<script src="adminResources/js/jquery.validate.min.js" type="text/javascript"></script> 
		<script src="adminResources/js/custom.js" type="text/javascript"></script>
		
</body>
</html>