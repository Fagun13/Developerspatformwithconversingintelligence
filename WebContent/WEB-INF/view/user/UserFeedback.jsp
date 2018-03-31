<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Developers Platform With Conversing Intelligence</title>
 <link href="adminResources/css/stylestar.css" rel="stylesheet"/>
        <link href="adminResources/css/style.default.css" rel="stylesheet"/>
        <link href="adminResources/css/select2.css" rel="stylesheet" />

<title>Insert title here</title>
<style>
.checked {
    color: orange;
}
</style>
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
                                    <li>Feedback</li>
                                </ul>
                                <h4>Feedback</h4>
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
                    <div class="contentpanel">
                        
                        <div class="row">
                            <div class="col-md-6">
                                <form:form id="basicForm" method="post" action="SaveUserFeedback.htm" modelAttribute="FeedbackVO">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">Feedback</h4>
                                        <p>Please provide your Feedback.It will be confidential</p>
                                    </div><!-- panel-heading -->
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Rating</label>
                                                
                                                
                                                
                                                <div class="stars">
		<form:radiobutton  path="feedbackRating" value="1" cssClass="star-1" id="star-1"  />
		<label class="star-1" for="star-1">1</label>
		<form:radiobutton path="feedbackRating" value="2" cssClass="star-2" id="star-2" />
		<label class="star-2" for="star-2">2</label>
		<form:radiobutton path="feedbackRating" value="3" cssClass="star-3"  id="star-3"/>
		<label class="star-3" for="star-3">3</label>
		<form:radiobutton  path="feedbackRating" value="4" cssClass="star-4" id="star-4"/>
		<label class="star-4" for="star-4">4</label>
		<form:radiobutton path="feedbackRating" value="5"  cssClass="star-5" id="star-5"/>
		<label class="star-5" for="star-5">5</label>
		<span></span>
	</div>
                                                
                                                                                            </div><!-- form-group -->
                                                               <div class="form-group">
                                                <label class="col-sm-3 control-label">Feedback</label>
                                                <div class="col-sm-9">
                                                    <form:textarea rows="5" path="feedbackDescription" cssClass="form-control" ></form:textarea>
                                                </div>
                                            </div><!-- form-group -->
                                                                                    </div><!-- row -->
                                    </div><!-- panel-body -->
                                    <div class="panel-footer">
                                      <div class="row">
                                        <div class="col-sm-9 col-sm-offset-3">
                                            <input type="submit" class="btn btn-primary mr5" value="Submit">
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