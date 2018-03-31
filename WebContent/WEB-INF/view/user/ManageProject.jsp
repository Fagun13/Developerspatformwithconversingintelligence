<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Developers Platform with Conversing Intelligence</title>

        <link href="adminResources/css/style.default.css" rel="stylesheet">
        <link href="adminResources/css/prettyPhoto.css" rel="stylesheet">

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
                                <i class="fa fa-folder"></i>
                            </div>
                            <div class="media-body">
                                <ul class="breadcrumb">
                                    <li><a href=""><i class="glyphicon glyphicon-home"></i></a></li>
                                    <li><a href="">Pages</a></li>
                                    <li>Manage Project</li>
                                </ul>
                                <h4>Manage Project</h4>
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
                    <div class="contentpanel contentpanel-mediamanager">
                        
                        <div class="media-options">
                            <div class="pull-left">
                                <div class="btn-toolbar">
                                    <div class="btn-group">
                                        <button id="selectAll" class="btn btn-default btn-sm" type="button">Select All</button>
                                    </div>
                                    <div class="btn-group">
                                        <button class="btn btn-default btn-sm disabled" type="button"><i class="fa fa-envelope mr5"></i> Email</button>
                                        <button class="btn btn-default btn-sm disabled" type="button"><i class="fa fa-download mr5"></i> Download</button>
                                    </div>
                                    <div class="btn-group">
                                        <button class="btn btn-default btn-sm disabled" type="button"><i class="fa fa-pencil mr5"></i> Edit</button>
                                        <button class="btn btn-default btn-sm disabled" type="button"><i class="fa fa-trash-o mr5"></i> Delete</button>
                                    </div>
                                </div><!-- btn-toolbar -->
                            </div>
                            <div class="pull-right">
                                Show: 
                                <div class="btn-group media-option-group" data-toggle="buttons">
                                    <label class="btn btn-default btn-sm active">
                                      <input type="radio" name="options" id="opAll" checked> All
                                    </label>
                                    <label class="btn btn-default btn-sm">
                                      <input type="radio" name="options" id="opDoc"> Documents
                                    </label>
                                    <label class="btn btn-default btn-sm">
                                      <input type="radio" name="options" id="opImg"> Images
                                    </label>
                                    <label class="btn btn-default btn-sm">
                                      <input type="radio" name="options" id="opVid"> Videos
                                    </label>
                                    <label class="btn btn-default btn-sm">
                                      <input type="radio" name="options" id="opAud"> Audios
                                    </label>
                                </div><!-- btn-group -->
                            </div>
                        </div><!-- media-options -->
                        
                        <hr>
      
                        <div class="row">
                          <div class="col-sm-9">
                            <div class="row media-manager">
                              
                              <div class="col-xs-6 col-sm-4 col-md-3 document">
                                <div class="thmb">
                                  <div class="ckbox ckbox-default">
                                    <input type="checkbox" id="check1" value="1" />
                                    <label for="check1"></label>
                                  </div>
                                  <div class="btn-group fm-group">
                                      <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                      </button>
                                      <ul class="dropdown-menu fm-menu pull-right" role="menu">
                                        <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                                        <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                                        <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                                        <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                      </ul>
                                  </div><!-- btn-group -->
                                  <div class="thmb-prev">
                                    <img src="images/photos/media-doc.png" class="img-responsive" alt="" />
                                  </div>
                                  <h5 class="fm-title"><a href="">MyDocuments.doc</a></h5>
                                  <small class="text-muted">Added: Jan 03, 2014</small>
                                </div><!-- thmb -->
                              </div><!-- col-xs-6 -->
                              
                              <div class="col-xs-6 col-sm-4 col-md-3 image">
                                <div class="thmb">
                                  <div class="ckbox ckbox-default">
                                    <input type="checkbox" id="check2" value="1" />
                                    <label for="check2"></label>
                                  </div>
                                  <div class="btn-group fm-group">
                                      <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                      </button>
                                      <ul class="dropdown-menu fm-menu pull-right" role="menu">
                                        <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                                        <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                                        <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                                        <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                      </ul>
                                  </div><!-- btn-group -->
                                  <div class="thmb-prev">
                                    <a href="images/photos/media1.jpg" data-rel="prettyPhoto">
                                      <img src="images/photos/media1.jpg" class="img-responsive" alt="" />
                                    </a>
                                  </div>
                                  <h5 class="fm-title"><a href="">Vegetarian.png</a></h5>
                                  <small class="text-muted">Added: Jan 02, 2014</small>
                                </div><!-- thmb -->
                              </div><!-- col-xs-6 -->
                              
                              <div class="col-xs-6 col-sm-4 col-md-3 video">
                                <div class="thmb">
                                  <div class="ckbox ckbox-default">
                                    <input type="checkbox" id="check3" value="1" />
                                    <label for="check3"></label>
                                  </div>
                                  <div class="btn-group fm-group">
                                      <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                      </button>
                                      <ul class="dropdown-menu fm-menu pull-right" role="menu">
                                        <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                                        <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                                        <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                                        <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                      </ul>
                                  </div><!-- btn-group -->
                                  <div class="thmb-prev">
                                    <img src="images/photos/media5.png" class="img-responsive" alt="" />
                                  </div>
                                  <h5 class="fm-title"><a href="">DogAnimation.mp4</a></h5>
                                  <small class="text-muted">Added: Jan 02, 2014</small>
                                </div><!-- thmb -->
                              </div><!-- col-xs-6 -->
                              
                              <div class="col-xs-6 col-sm-4 col-md-3 audio">
                                <div class="thmb">
                                  <div class="ckbox ckbox-default">
                                    <input type="checkbox" id="check7" value="1" />
                                    <label for="check7"></label>
                                  </div>
                                  <div class="btn-group fm-group">
                                      <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                      </button>
                                      <ul class="dropdown-menu fm-menu pull-right" role="menu">
                                        <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                                        <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                                        <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                                        <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                      </ul>
                                  </div><!-- btn-group -->
                                  <div class="thmb-prev">
                                    <img src="images/photos/media-audio.png" class="img-responsive" alt="" />
                                  </div>
                                  <h5 class="fm-title"><a href="">WreckingBall.mp3</a></h5>
                                  <small class="text-muted">Added: Jan 01, 2014</small>
                                </div><!-- thmb -->
                              </div><!-- col-xs-6 -->
                              
                              <div class="col-xs-6 col-sm-4 col-md-3 image">
                                <div class="thmb">
                                  <div class="ckbox ckbox-default">
                                    <input type="checkbox" id="check4" value="1" />
                                    <label for="check4"></label>
                                  </div>
                                  <div class="btn-group fm-group">
                                      <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                      </button>
                                      <ul class="dropdown-menu fm-menu pull-right" role="menu">
                                        <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                                        <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                                        <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                                        <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                      </ul>
                                  </div><!-- btn-group -->
                                  <div class="thmb-prev">
                                    <a href="images/photos/media3.png" data-rel="prettyPhoto">
                                      <img src="images/photos/media3.png" class="img-responsive" alt="" />
                                    </a>
                                  </div>
                                  <h5 class="fm-title"><a href="">MyFirstArt.png</a></h5>
                                  <small class="text-muted">Added: Jan 01, 2014</small>
                                </div><!-- thmb -->
                              </div><!-- col-xs-6 -->
                              
                              <div class="col-xs-6 col-sm-4 col-md-3 document">
                                <div class="thmb">
                                  <div class="ckbox ckbox-default">
                                    <input type="checkbox" id="check5" value="1" />
                                    <label for="check5"></label>
                                  </div>
                                  <div class="btn-group fm-group">
                                      <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                      </button>
                                      <ul class="dropdown-menu fm-menu pull-right" role="menu">
                                        <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                                        <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                                        <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                                        <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                      </ul>
                                  </div><!-- btn-group -->
                                  <div class="thmb-prev">
                                    <img src="images/photos/media-doc.png" class="img-responsive" alt="" />
                                  </div>
                                  <h5 class="fm-title"><a href="">MyResume.docx</a></h5>
                                  <small class="text-muted">Added: Jan 01, 2014</small>
                                </div><!-- thmb -->
                              </div><!-- col-xs-6 -->
                              
                              <div class="col-xs-6 col-sm-4 col-md-3 video">
                                <div class="thmb">
                                  <div class="ckbox ckbox-default">
                                    <input type="checkbox" id="check6" value="1" />
                                    <label for="check6"></label>
                                  </div>
                                  <div class="btn-group fm-group">
                                      <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                      </button>
                                      <ul class="dropdown-menu fm-menu pull-right" role="menu">
                                        <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                                        <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                                        <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                                        <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                      </ul>
                                  </div><!-- btn-group -->
                                  <div class="thmb-prev">
                                    <img src="images/photos/media4.png" class="img-responsive" alt="" />
                                  </div>
                                  <h5 class="fm-title"><a href="">MyFirstMovie.mp4</a></h5>
                                  <small class="text-muted">Added: Jan 01, 2014</small>
                                </div><!-- thmb -->
                              </div><!-- col-xs-6 -->
                                          
                              <div class="col-xs-6 col-sm-4 col-md-3 image">
                                <div class="thmb">
                                  <div class="ckbox ckbox-default">
                                    <input type="checkbox" id="check13" value="1" />
                                    <label for="check13"></label>
                                  </div>
                                  <div class="btn-group fm-group">
                                      <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                      </button>
                                      <ul class="dropdown-menu fm-menu pull-right" role="menu">
                                        <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                                        <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                                        <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                                        <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                      </ul>
                                  </div><!-- btn-group -->
                                  <div class="thmb-prev">
                                    <a href="images/photos/media2.png" data-rel="prettyPhoto">
                                      <img src="images/photos/media2.png" class="img-responsive" alt="" />
                                    </a>
                                  </div>
                                  <h5 class="fm-title"><a href="">MeAndFriends.png</a></h5>
                                  <small class="text-muted">Added: Jan 01, 2014</small>
                                </div><!-- thmb -->
                              </div><!-- col-xs-6 -->
                              
                              <div class="col-xs-6 col-sm-4 col-md-3 audio">
                                <div class="thmb">
                                  <div class="ckbox ckbox-default">
                                    <input type="checkbox" id="check8" value="1" />
                                    <label for="check8"></label>
                                  </div>
                                  <div class="btn-group fm-group">
                                      <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                      </button>
                                      <ul class="dropdown-menu fm-menu pull-right" role="menu">
                                        <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                                        <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                                        <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                                        <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                      </ul>
                                  </div><!-- btn-group -->
                                  <div class="thmb-prev">
                                    <img src="images/photos/media-audio.png" class="img-responsive" alt="" />
                                  </div>
                                  <h5 class="fm-title"><a href="">IWillSurvive.mp3</a></h5>
                                  <small class="text-muted">Added: Dec 31, 2013</small>
                                </div><!-- thmb -->
                              </div><!-- col-xs-6 -->
                              
                              <div class="col-xs-6 col-sm-4 col-md-3 document">
                                <div class="thmb">
                                  <div class="ckbox ckbox-default">
                                    <input type="checkbox" id="check9" value="1" />
                                    <label for="check9"></label>
                                  </div>
                                  <div class="btn-group fm-group">
                                      <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                      </button>
                                      <ul class="dropdown-menu fm-menu pull-right" role="menu">
                                        <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                                        <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                                        <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                                        <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                      </ul>
                                  </div><!-- btn-group -->
                                  <div class="thmb-prev">
                                    <img src="images/photos/media-doc.png" class="img-responsive" alt="" />
                                  </div>
                                  <h5 class="fm-title"><a href="">MyDocuments.doc</a></h5>
                                  <small class="text-muted">Added: Dec 31, 2013</small>
                                </div><!-- thmb -->
                              </div><!-- col-xs-6 -->
                              
                              <div class="col-xs-6 col-sm-4 col-md-3 image">
                                <div class="thmb">
                                  <div class="ckbox ckbox-default">
                                    <input type="checkbox" id="check10" value="1" />
                                    <label for="check10"></label>
                                  </div>
                                  <div class="btn-group fm-group">
                                      <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                      </button>
                                      <ul class="dropdown-menu fm-menu pull-right" role="menu">
                                        <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                                        <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                                        <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                                        <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                      </ul>
                                  </div><!-- btn-group -->
                                  <div class="thmb-prev">
                                    <a href="images/photos/media6.png" data-rel="prettyPhoto">
                                      <img src="images/photos/media6.png" class="img-responsive" alt="" />
                                    </a>
                                  </div>
                                  <h5 class="fm-title"><a href="">GreatCity.png</a></h5>
                                  <small class="text-muted">Added: Dec 30, 2013</small>
                                </div><!-- thmb -->
                              </div><!-- col-xs-6 -->
                              
                              <div class="col-xs-6 col-sm-4 col-md-3 video">
                                <div class="thmb">
                                  <div class="ckbox ckbox-default">
                                    <input type="checkbox" id="check11" value="1" />
                                    <label for="check11"></label>
                                  </div>
                                  <div class="btn-group fm-group">
                                      <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                      </button>
                                      <ul class="dropdown-menu fm-menu pull-right" role="menu">
                                        <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                                        <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                                        <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                                        <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                      </ul>
                                  </div><!-- btn-group -->
                                  <div class="thmb-prev">
                                    <img src="images/photos/media7.png" class="img-responsive" alt="" />
                                  </div>
                                  <h5 class="fm-title"><a href="">InTheSea.mp4</a></h5>
                                  <small class="text-muted">Added: Dec 30, 2013</small>
                                </div><!-- thmb -->
                              </div><!-- col-xs-6 -->
                              
                            </div><!-- row -->
                            
                            <br />
                            <ul class="pagination pagination-split mt5">
                                <li class="disabled"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                <li><a href="#">1</a></li>
                                <li class="active"><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                            </ul>
                            
                            
                          </div><!-- col-sm-9 -->
                                                   </div><!-- col-sm-3 -->
                        </div>
                      </div>
                    
                    </div><!-- contentpanel -->
                    
                
            </div><!-- mainwrapper -->
        </section>


        <script src="adminResources/js/jquery-1.11.1.min.js"></script>
        <script src="adminResources/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="adminResources/js/bootstrap.min.js"></script>
        <script src="adminResources/js/modernizr.min.js"></script>
        <script src="adminResources/js/pace.min.js"></script>
        <script src="adminResources/js/retina.min.js"></script>
        <script src="adminResources/js/jquery.cookies.js"></script>
        
        <script src="adminResources/js/jquery.prettyPhoto.js"></script>

        <script src="adminResources/js/custom.js"></script>
        <script>
            jQuery(document).ready(function(){
    
                jQuery('.thmb').hover(function() {
                    var t = jQuery(this);
                    t.find('.ckbox').show();
                    t.find('.fm-group').show();
                }, function() {
      
                    var t = jQuery(this);
                    if(!t.closest('.thmb').hasClass('checked')) {
                        t.find('.ckbox').hide();
                        t.find('.fm-group').hide();
                    }
                });
    
                jQuery('.ckbox').each(function(){
                    var t = jQuery(this);
                    var parent = t.parent();
                    if(t.find('input').is(':checked')) {
                        t.show();
                        parent.find('.fm-group').show();
                        parent.addClass('checked');
                    }
                });
    
    
                jQuery('.ckbox').click(function(){
                    var t = jQuery(this);
                    if(!t.find('input').is(':checked')) {
                        t.closest('.thmb').removeClass('checked');
                        enable_itemopt(false);
                    } else {
                        t.closest('.thmb').addClass('checked');
                        enable_itemopt(true);
                    }
                });
    
                jQuery('#selectAll').click(function() {
                    if(jQuery(this).hasClass('btn-default')) {
                        jQuery('.thmb').each(function() {
                            jQuery(this).find('input').attr('checked',true);
                            jQuery(this).addClass('checked');
                            jQuery(this).find('.ckbox, .fm-group').show();
                        });
                        enable_itemopt(true);
                        jQuery(this).removeClass('btn-default').addClass('btn-primary');
                        jQuery(this).text('Select None');
                    } else {
                        jQuery('.thmb').each(function(){
                            jQuery(this).find('input').attr('checked',false);
                            jQuery(this).removeClass('checked');
                            jQuery(this).find('.ckbox, .fm-group').hide();
                        });
                        enable_itemopt(false);
                        jQuery(this).removeClass('btn-primary').addClass('btn-default');
                        jQuery(this).text('Select All');
                    }
                });
    
                function enable_itemopt(enable) {
                    if(enable) {
                        jQuery('.media-options .btn.disabled').removeClass('disabled').addClass('enabled');
                    } else {
        
                        // check all thumbs if no remaining checks
                        // before we can disabled the options
                        var ch = false;
                        jQuery('.thmb').each(function(){
                            if(jQuery(this).hasClass('checked'))
                                ch = true;
                        });
        
                        if(!ch)
                            jQuery('.media-options .btn.enabled').removeClass('enabled').addClass('disabled');
                    }
                }
    
                jQuery("a[data-rel^='prettyPhoto']").prettyPhoto();
    
            });
        </script>
    </body>
</html>
