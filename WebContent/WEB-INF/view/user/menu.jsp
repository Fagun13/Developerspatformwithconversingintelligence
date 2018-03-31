<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="leftpanel">
                    <div class="media profile-left">
                        <a class="pull-left profile-thumb" href="profile.html">
                              <c:if test="${not empty sessionScope.profilePic}">
                                            <img src="<%=request.getContextPath()%>/upload/profileImg/${sessionScope.reg.loginVO.username}/${sessionScope.profilePic}" alt="" class="img-circle img-responsive img-profile"> 
										 
										</c:if>
										<c:if test="${empty sessionScope.profilePic}">
                                             <img src="adminResources/images/girl.jpg" alt="" class="img-circle img-responsive img-profile">
										</c:if>
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">${sessionScope.reg.registrationFname} ${sessionScope.reg.registrationLname}</h4>
                            
                        </div>
                    </div><!-- media -->
                    
                    <h5 class="leftpanel-title">Navigation</h5>
                    <ul class="nav nav-pills nav-stacked">
                        <li class="active"><a href="userIndex.htm"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
                        
                        <li><a href="ManageProject.htm"><span class="pull-right badge"></span><i class="fa fa-envelope-o"></i> <span>Manage Project</span></a></li>
                        <li><a href="PostComplain.htm"><span class="pull-right badge"></span><i class="fa fa-envelope-o"></i> <span>Post Complain</span></a></li>
                        <li><a href="ViewComplainUser.htm"><span class="pull-right badge"></span><i class="fa fa-envelope-o"></i> <span>View Complain Status</span></a></li>
                        <li><a href="UserFeedback.htm"><span class="pull-right badge"></span><i class="fa fa-envelope-o"></i> <span>Post Feedback</span></a></li>
                        <li><a href="ViewUserProfile.htm"><span class="pull-right badge"></span><i class="fa fa-envelope-o"></i> <span>Profile</span></a></li>
                        <li><a href="ChangePassword.htm"><span class="pull-right badge"></span><i class="fa fa-envelope-o"></i> <span>Change Password</span></a></li>
<!--                         <li><a href="Error.htm"><span class="pull-right badge"></span><i class="fa fa-envelope-o"></i> <span>error page</span></a></li> -->
                            
                    </ul>
                    
                </div>