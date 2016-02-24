<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]>         <html class="ie8"> <![endif]-->
<!--[if IE 9]>         <html class="ie9 gt-ie8"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="gt-ie8 gt-ie9 not-ie"> <!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>vzPixel Documents</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

	<!-- Open Sans font from Google CDN -->
	<link href="assets/css/fonts.css" rel="stylesheet" type="text/css">

	<!-- Pixel Admin's stylesheets -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/pixel-admin.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/widgets.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/rtl.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/themes.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/custom.css" rel="stylesheet" type="text/css">
	<link href="assets/css/dataurl.css" rel="stylesheet" type="text/css">
	
	<!--[if lt IE 9]>
		<script src="assets/javascripts/ie.min.js"></script>
	<![endif]-->
</head>



<body class="theme-default main-menu-animated">

<script type="text/javascript">var init = [];</script>
<!-- Demo script --> <script src="assets/demo/demo.js"></script> <!-- / Demo script -->

<div id="main-wrapper">



	<div id="main-navbar" class="navbar navbar-inverse" role="navigation">
		<!-- Main menu toggle -->
		<button type="button" id="main-menu-toggle"><i class="navbar-icon fa fa-bars icon"></i><span class="hide-menu-text">HIDE MENU</span></button>
		
		<div class="navbar-inner">
			<!-- Main navbar header -->
			<div class="navbar-header">

				<!-- Logo -->
				<a href="index.jsp" class="navbar-brand">
					<!--  <div><img alt="Pixel Admin" src="assets/images/pixel-admin/main-navbar-logo.png"></div> -->
					<!--  Verizon DAM -->
					<span style="padding:10px 4px 10px 0px; display:inline-block;"><img alt="Pixel Admin" src="assets/images/pixel-admin/main-navbar-logo.png"></span>
				</a>

				<!-- Main navbar toggle -->
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar-collapse"><i class="navbar-icon fa fa-bars"></i></button>

			</div> <!-- / .navbar-header -->

			<div id="main-navbar-collapse" class="collapse navbar-collapse main-navbar-collapse">
				<div>
					

					<div class="right clearfix">
						<ul class="nav navbar-nav pull-right right-navbar-nav">

							<li class="nav-icon-btn nav-icon-btn-danger dropdown">
								
							
							<li class="dropdown">
								<a href="#" class="dropdown-toggle user-menu" data-toggle="dropdown">
									<img src="https://vzweb2.verizon.com/sites/wireline/files/media/user/secondary/jpegphoto_4286368450.jpg?timestamp=1456231263" alt="">
									<span>Kumaravelan Subramanian</span>
								</a>
								<ul class="dropdown-menu">
									<li><a href="#"><span class="label label-warning pull-right">New</span>Profile</a></li>
									<li><a href="#"><span class="badge badge-primary pull-right">New</span>Account</a></li>
									<li><a href="#"><i class="dropdown-icon fa fa-cog"></i>&nbsp;&nbsp;Settings</a></li>
									<li class="divider"></li>
									<li><a href="#"><i class="dropdown-icon fa fa-power-off"></i>&nbsp;&nbsp;Log Out</a></li>
								</ul>
							</li>
						</ul> <!-- / .navbar-nav -->
					</div> <!-- / .right -->
				</div>
			</div> <!-- / #main-navbar-collapse -->
		</div> <!-- / .navbar-inner -->
	</div> <!-- / #main-navbar -->
<!-- /2. $END_MAIN_NAVIGATION -->

	<div id="main-menu" role="navigation">
		<div id="main-menu-inner">
			<div class="menu-content top" id="menu-content-demo">
				
				<div>
					<div class="text-bg"><span class="text-slim">Welcome,</span> <span class="text-semibold">Admin</span></div>

					<img src="assets/demo/avatars/1.jpg" alt="" class="">
					
					<a href="#" class="close">&times;</a>
				</div>
			</div>
			<ul class="navigation">
				<li>
					<a href="#" id="link1" class="links" data-showdiv="login"><i class="menu-icon fa fa-dashboard"></i><span class="mm-text">Add User</span></a>
				</li>
				<li>
					<a href="#" id="link2" class="links" data-showdiv="group"><i class="menu-icon fa fa-dashboard"></i><span class="mm-text">Create Group</span></a>
				</li>
				<li>
					<a href="#" id="link3" class="links" data-showdiv="group_access"><i class="menu-icon fa fa-dashboard"></i><span class="mm-text">Add User in the group</span></a>
				</li>
				
				
				
				
				
				
				
				
			</ul> <!-- / .navigation -->
			
		</div> <!-- / #main-menu-inner -->
	</div> <!-- / #main-menu -->
<!-- /4. $MAIN_MENU -->


	<div id="content-wrapper">
		
		<ul class="breadcrumb breadcrumb-page" style="margin-top:-12px; float:left;">
			<div class="breadcrumb-label text-light-gray" style="padding-right:10px;">You are here: </div>
			<!-- <li class="active"><a href="index.jsp">Home</a></li> -->
		</ul>
		<div class="page-header">
			
			<div class="row" style="width:100%;">
				<!-- Page header, center on small screens -->
				<!--  <h1 class="col-xs-12 col-sm-4 text-center text-left-sm"><i class="fa page-header-icon menu-icon fa fa-files-o"></i>&nbsp;&nbsp;Documents </h1> -->

				<div class="col-xs-12 col-sm-8" style="float:left; width:100%; padding:0px; margin:0px;">
					<div class="row" style="width:100%; float:left; padding:0px; margin:0px;">
						<!--  <hr class="visible-xs no-grid-gutter-h"> -->

						<div id="divCreate" class="btn-group" style="float:left;">
							<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Create&nbsp;<i class="fa fa-caret-down"></i></button>
							<ul class="dropdown-menu">
								<li><a href="#">Document</a></li>
								<li><a href="#">Excel Spreadsheet</a></li>
								<li><a href="#">Powerpoint</a></li>
								<li class="divider"></li>
								<li><a id="linkCreateFolder" href="javascript:void(0);" rel="folder">Create Folder</a></li>
							</ul>
						</div>
						
						<!-- Margin -->
						<div class="visible-xs clearfix form-group-margin"></div>
						
						<!-- "Create project" button, width=auto on desktops -->
						<div id="divUpload" class="col-xs-12 col-sm-auto" style="float:left;">
							<a id="linkUpload" href="javascript:void(0);" class="thumbnail btn btn-primary btn-labeled" style="width: 100%;"><span class="btn-label icon fa fa-plus"></span>Upload Document</a>
						</div>

						<!-- Margin -->
						<div class="visible-xs clearfix form-group-margin"></div>
						
						
						<!-- Search field -->
						<form onsubmit="return searchResults(this);" action="#" class="col-xs-12 col-sm-6" style="float:right;">
							<div class="input-group no-margin" style="float:right;">
								<span class="input-group-addon" style="border:none;background: #fff;background: rgba(0,0,0,.05);"><i class="fa fa-search"></i></span>
								<input type="text" placeholder="Search documents..." class="form-control no-padding-hr" style="border:none;background: #fff;background: rgba(0,0,0,.05);">
							</div>
							<!-- 
							<div class="select2-search">       
								<input class="select2-input form-control no-padding-hr" spellcheck="false" type="text" autocomplete="off" autocapitalize="off" autocorrect="off">   
							</div>
							 -->
						</form>
										
					</div>
				</div>
			</div>
		</div> <!-- / .page-header -->

		
		
		
		
		<div id="divContentContainer">	
			<div class="div" id="login" align="center" >
							<h1>Access to User</h1>
			      <form method="post" action="admin.jsp">
			        <p><input type="text" name="login" value="" placeholder="Vzid"></p>
			        
			        </p>
			        <p class="submit"><input type="submit" name="commit" value="Grant Access"></p>
			         
			      </form>
							
							
							</div>
							
							<div class="div" id="group" align="center" >
							<h1>Create Group</h1>
			      <form method="post" action="admin.jsp">
			        <p><input type="text" name="login" value="" placeholder="Group Name"></p>
			        
			        </p>
			        <p class="submit"><input type="submit" name="commit" value="Create Group"></p>
			         
			      </form>
							
							
							</div>
							
							<div class="div" id="group_access" align="center" >
							<h1>Access of Group to User</h1>
			      <form method="post" action="admin.jsp">
			        <p><input type="text" name="login" value="" placeholder="Vzid"></p>
			        
			        </p>
			        <p class="submit"><input type="submit" name="commit" value="Grant Group Access"></p>
			         
			      </form>
							
							
							</div>
					
			</div>
		
		
		
		

		</div>
	</div> <!-- / #content-wrapper -->
	<div id="main-menu-bg"></div>
</div> <!-- / #main-wrapper -->

<div id="divDebug"></div>


<!-- Modal -->
<div id="divCreateDoc" class="modal fade" tabindex="-1" role="dialog" style="display: none;">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title" id="myModalLabel">Create New Document</h4>
			</div>
			<div class="modal-body">
				<h4>Text in a modal</h4>
				<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary">Save changes</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<!-- / Modal -->
		

<!-- Start Modal Box -->
<div id="divUploadModal" class="modal fade" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3 class="modal-title">Upload Document</h3>
			</div>
			<div class="modal-body">
				
				<div id="upload-form" class="form-group" style="display: noned">
					<input type="file" id="fileupload" name="img[]" class="file" data-url="/pixel-mw/UploadServlet" multiple />
					<div id="upload" style="display: none;">Uploading..</div>
					<div id="message"></div>
					
					<div class="row" style="margin-bottom:10px;">
						<input id="upload-btn" type="file" />
					</div>
					
					<div class="row" style="margin-bottom:10px;">
						<input id="txtGSAMID" class="form-control" type="text" placeholder="GSAM ID">
					</div>
					
					<div class="row" style="margin-bottom:10px;">
						<label for="comment">Version Comment:</label>
						<textarea class="form-control" rows="5" id="comment"></textarea>
					</div>
	
				</div>
			</div>
			
			<div class="modal-footer">
				<button class="btn btn-default" id="btnUploadModalSubmit">Submit</button>
				<button class="btn btn-default" data-dismiss="modal">Close</button>
			</div>

		</div>
	</div>
</div>




	<script type="text/javascript"> window.jQuery || document.write('<script src="assets/javascripts/jquery.min.js">'+"<"+"/script>"); </script>


<script src="assets/javascripts/jquery.dataTables.min.js"></script>
<script src="assets/javascripts/bootstrap.min.js"></script>
<script src="assets/javascripts/bootstrap-table.js"></script>
<script src="assets/javascripts/pixel-admin.min.js"></script>
<!--  Upload -->
<script src="assets/javascripts/upload/jquery.ui.widget.js"></script>
<script src="assets/javascripts/upload/jqueryupload.js"></script>
<!--  / Upload -->

<script src="assets/javascripts/pace_min.js"></script>

<script type="text/javascript">

	//$("#divContentContainer .div").not(':eq(0)').hide();
	$("#divContentContainer .div").hide();
	$(document).ready(function() { 
	    $(".links").click(function() {
	        //jQuery(this).next(".div").toggle();
	        $("#divContentContainer .div").hide();
	        
	        var attr=$(this).attr("data-showdiv");
	        $("#"+attr).show();
	        $("ul.breadcrumb").find('li').remove();
			$("ul.breadcrumb").append("<li class=\"active\">"+$(this).find('span').text()+"</li>");

	        return false;   
	    });
	    
	});
	
	


	init.push(function () {
		
		$('#page-alerts-demo').on('click', 'button', function () {
			var $this = $(this);
			// Go to the top
			$('html,body').animate({ scrollTop: 0 }, 500);
			// Wait while page is scrolling
			setTimeout(function () {
				if ($this.hasClass('page-alerts-clear-btn')) {
					PixelAdmin.plugins.alerts.clear(
						true, // animate
						'pa_page_alerts_default' // namespace
					);
				} else {
					var options = {
						type: $this.attr('data-type'),
						namespace: 'pa_page_alerts_default'
					};
					if ($this.hasClass('auto-close-alert'))
						options['auto_close'] = 3; // seconds
					PixelAdmin.plugins.alerts.add($this.attr('data-text'), options);
				}
			}, 800);
		});
		
		
		$('#divCreate ul.dropdown-menu a').not('#linkCreateFolder').on('click', function() {
			var $modal  = $('#divCreateDoc');
			$modal.find('> div').addClass('modal-dialog modal-sm animated ' + $('#uidemo-modals-effects-select').find(":selected").attr('value'));
			$modal.modal('show');
		});
		
		
		
	});

	$(document).ready(function(){
		window.PixelAdmin.start(init);

		//getDocs();
		
		$('input#upload-btn').pixelFileInput({ placeholder: 'No file selected...' });
		
		function init() {
			document.getElementById('file_upload_form').onsubmit=function() {
				document.getElementById('file_upload_form').target = 'upload_target'; //'upload_target' is the name of the iframe
			}
		}
		window.onload=init;
			
		//getDocs2();
	    //var myHilitor = new Hilitor("divContent");
		//myHilitor.apply("Kumar");
		
		
		$('#linkCreateFolder').on('click', function () {
			bootbox.prompt({
				title: "Create a new folder",
				callback: function(result) {
					if (result === null) {                                             
						//Cancelled                              
					} else {
						$('html,body').animate({ scrollTop: 0 }, 500);
						var options = {
							type: 'success',
							namespace: 'pa_page_alerts_default'
						};
						options['auto_close'] = 5; // seconds
						PixelAdmin.plugins.alerts.add("<i class=\"fa fa-check-circle\"></i> '"+ result +"' folder has been created successfully!", options);
					}
				},
				className: "bootbox-sm"
			});
		});
		
		

		$('#linkUpload').click(function(){
			$('#divUploadModal').modal('show');
			/*
		  	$('.modal-body').empty();
		  	var title = $(this).parent('a').attr("title");
		  	$('.modal-title').html(title);
		  	$($('#upload-form').html()).appendTo('.modal-body');
		  	$('#myModal').modal({show:true});
		  	*/
		});
		

		

	});
	
</script>

<script src="assets/javascripts/custom.js"></script>
<script src="assets/javascripts/hilitor.js"></script>

		
</body>
</html>