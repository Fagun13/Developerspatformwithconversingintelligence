<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <link href="adminResources/css/select2.css" rel="stylesheet" />
        <link href="adminResources/css/style.datatables.css" rel="stylesheet">
        <link href="adminResources/css/dataTables.responsive.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
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
                                <i class="fa fa-th-list"></i>
                            </div>
                            <div class="media-body">
                                <ul class="breadcrumb">
                                    <li><a href=""><i class="glyphicon glyphicon-home"></i></a></li>
                                    <li><a href="">Tables</a></li>
                                    <li>Data Tables</li>
                                </ul>
                                <h4>Data Tables</h4>
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
                    <div class="contentpanel">
                        <p class="mb20"><a href="http://datatables.net/" target="_blank">DataTables</a> is a plug-in for the jQuery Javascript library. It is a highly flexible tool, based upon the foundations of progressive enhancement, and will add advanced interaction controls to any HTML table.</p>
                    
                        <div class="panel panel-primary-head">
                            <div class="panel-heading">
                                <h4 class="panel-title">Basic Configuration</h4>
                                <p>Searching, ordering, paging etc goodness will be immediately added to the table, as shown in this example.</p>
                            </div><!-- panel-heading -->
                            
                            <table id="basicTable" class="table table-striped table-bordered responsive">
                                <thead class="">
                                    <tr>
                                        <th>ID</th>
                                        <th>User Email</th>
                                        <th>Complain Name</th>
                                        <th>Complain Description</th>
                                        <th>Date</th>
                                        <th>Time</th>
                                        <th>Attachment</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                         
                                <tbody>
                                <c:forEach items="${list}" var="list1">
                                    <tr>
                                        <td>${list1.complainId}</td>
                                        <td>${list1.loginVO.username}</td>
                                        <td>${list1.complainName}</td>
                                        <td>${list1.complainDescription}</td>
                                        <td>${list1.complainDate}</td>
                                        <td>${list1.complainTime}</td>                      
                                        <td><a href="" download='${list1.complainDescriptionFile}'  >Download</a></td>
                                        <td><a href='ReplyComplain.htm?id=${list1.complainId}'>Reply</a></td>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                            </table>
                        </div><!-- panel -->
                        
                        <br />
                        
                        <div class="panel panel-dark-head">
                            <div class="panel-heading">
                                <div class="pull-right">
                                    <div class="btn-group">
                                        <button data-toggle="dropdown" class="btn btn-sm mt5 btn-white noborder dropdown-toggle" type="button">
                                            Show/Hide Columns <span class="caret"></span>
                                        </button>
                                        <ul role="menu" id="shCol" class="dropdown-menu dropdown-menu-sm pull-right">
                                            <li>
                                                <div class="ckbox ckbox-primary">
                                                    <input type="checkbox" checked="checked" id="checkName" value="0">
                                                    <label for="checkName">Name</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="ckbox ckbox-primary">
                                                    <input type="checkbox" checked="checked" id="checkPosition" value="1">
                                                    <label for="checkPosition">Position</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="ckbox ckbox-primary">
                                                    <input type="checkbox" checked="checked" id="checkOffice" value="2">
                                                    <label for="checkOffice">Office</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="ckbox ckbox-primary">
                                                    <input type="checkbox" checked="checked" id="checkAge" value="3">
                                                    <label for="checkAge">Age</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="ckbox ckbox-primary">
                                                    <input type="checkbox" checked="checked" id="checkDate" value="4">
                                                    <label for="checkDate">Date</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="ckbox ckbox-primary">
                                                    <input type="checkbox" checked="checked" id="checkSalary" value="5">
                                                    <label for="checkSalary">Salary</label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h4 class="panel-title">Show/Hide Columns Dynamically</h4>
                                <p>This example shows how to dynamically show and hide columns in a table.</p>
                            </div><!-- panel-heading -->
                            
                           	                        </div><!-- panel -->
                        
                        <div class="panel panel-success-head">
                            <div class="panel-heading">
                                <h4 class="panel-title">DataTable With Child Rows</h4>
                                <p>This can be used to show additional information about a row, useful for cases where you wish to convey more information about a row than there is space for in the host table.</p>
                            </div><!-- panel-heading -->
                            
    	                </div><!-- panel -->
                        
                    </div><!-- contentpanel -->
                </div><!-- mainpanel -->
            </div><!-- mainwrapper -->
        </section>

        <script src="adminResources/js/jquery-1.11.1.min.js"></script>
        <script src="adminResources/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="adminResources/js/bootstrap.min.js"></script>
        <script src="adminResources/js/modernizr.min.js"></script>
        <script src="adminResources/js/pace.min.js"></script>
        <script src="adminResources/js/retina.min.js"></script>
        <script src="adminResources/js/jquery.cookies.js"></script>
        
        <script src="adminResources/js/jquery.dataTables.min.js"></script>
        <script src="adminResources/js/dataTables.bootstrap.js"></script>
        <script src="adminResources/js/dataTables.responsive.js"></script>
        <script src="adminResources/js/select2.min.js"></script>

        <script src="adminResources/js/custom.js"></script>
        <script>
            jQuery(document).ready(function(){
                
                jQuery('#basicTable').DataTable({
                    responsive: true
                });
                
                var shTable = jQuery('#shTable').DataTable({
                    "fnDrawCallback": function(oSettings) {
                        jQuery('#shTable_paginate ul').addClass('pagination-active-dark');
                    },
                    responsive: true
                });
                
                // Show/Hide Columns Dropdown
                jQuery('#shCol').click(function(event){
                    event.stopPropagation();
                });
                
                jQuery('#shCol input').on('click', function() {

                    // Get the column API object
                    var column = shTable.column($(this).val());
 
                    // Toggle the visibility
                    if ($(this).is(':checked'))
                        column.visible(true);
                    else
                        column.visible(false);
                });
                
                var exRowTable = jQuery('#exRowTable').DataTable({
                    responsive: true,
                    "fnDrawCallback": function(oSettings) {
                        jQuery('#exRowTable_paginate ul').addClass('pagination-active-success');
                    },
                    "ajax": "ajax/objects.txt",
                    "columns": [
                        {
                            "class":          'details-control',
                            "orderable":      false,
                            "data":           null,
                            "defaultContent": ''
                        },
                        { "data": "name" },
                        { "data": "position" },
                        { "data": "office" },
                        { "data": "salary" }
                    ],
                    "order": [[1, 'asc']] 
                });
                
                // Add event listener for opening and closing details
                jQuery('#exRowTable tbody').on('click', 'td.details-control', function () {
                    var tr = $(this).closest('tr');
                    var row = exRowTable.row( tr );
             
                    if ( row.child.isShown() ) {
                        // This row is already open - close it
                        row.child.hide();
                        tr.removeClass('shown');
                    }
                    else {
                        // Open this row
                        row.child( format(row.data()) ).show();
                        tr.addClass('shown');
                    }
                });
               
                
                // DataTables Length to Select2
                jQuery('div.dataTables_length select').removeClass('form-control input-sm');
                jQuery('div.dataTables_length select').css({width: '60px'});
                jQuery('div.dataTables_length select').select2({
                    minimumResultsForSearch: -1
                });
    
            });
            
            function format (d) {
                // `d` is the original data object for the row
                return '<table class="table table-bordered nomargin">'+
                    '<tr>'+
                        '<td>Full name:</td>'+
                        '<td>'+d.name+'</td>'+
                    '</tr>'+
                    '<tr>'+
                        '<td>Extension number:</td>'+
                        '<td>'+d.extn+'</td>'+
                    '</tr>'+
                    '<tr>'+
                        '<td>Extra info:</td>'+
                        '<td>And any further details here (images etc)...</td>'+
                    '</tr>'+
                '</table>';
            }
        </script>

    </body>
</html>
	