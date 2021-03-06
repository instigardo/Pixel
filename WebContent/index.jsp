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
	<title>Verizon Drive</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

	<link href="assets/css/fonts.css" rel="stylesheet" type="text/css">
	<link href="assets/css/font-awesome.css" rel="stylesheet" type="text/css">

	<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/pixel-admin.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/widgets.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/rtl.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/themes.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/custom.css" rel="stylesheet" type="text/css">
	<!--  <link href="assets/css/dataurl.css" rel="stylesheet" type="text/css"> -->
	
	<!--[if lt IE 9]>
		<script src="assets/javascripts/ie.min.js"></script>
	<![endif]-->
</head>


<!-- 1. $BODY ======================================================================================
	
	Body

	Classes:
	* 'theme-{THEME NAME}'
	* 'right-to-left'      - Sets text direction to right-to-left
	* 'main-menu-right'    - Places the main menu on the right side
	* 'no-main-menu'       - Hides the main menu
	* 'main-navbar-fixed'  - Fixes the main navigation
	* 'main-menu-fixed'    - Fixes the main menu
	* 'main-menu-animated' - Animate main menu
-->
<body class="theme-default main-menu-animated">

<script type="text/javascript">var init = [];</script>
<!-- Demo script --> <script src="assets/demo/demo.js"></script> <!-- / Demo script -->

<div id="main-wrapper">


<!-- 2. $MAIN_NAVIGATION ===========================================================================

	Main navigation
-->
	<div id="main-navbar" class="navbar navbar-inverse" role="navigation">
		<!-- Main menu toggle -->
		<button type="button" id="main-menu-toggle"><i class="navbar-icon fa fa-bars icon"></i><span class="hide-menu-text">HIDE MENU</span></button>
		
		<div class="navbar-inner">
			<!-- Main navbar header -->
			<div class="navbar-header">

				<!-- Logo -->
				<a href="index.jsp" class="navbar-brand">
					<span style="padding:10px 4px 10px 0px; display:inline-block;"><img alt="Verizon Drive" src="assets/images/pixel-admin/main-navbar-logo.png"></span>
				</a>

				<!-- Main navbar toggle -->
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar-collapse"><i class="navbar-icon fa fa-bars"></i></button>

			</div> <!-- / .navbar-header -->

			<div id="main-navbar-collapse" class="collapse navbar-collapse main-navbar-collapse">
				<div>
					

					<div class="right clearfix">
						<ul class="nav navbar-nav pull-right right-navbar-nav">

							<li class="nav-icon-btn nav-icon-btn-danger dropdown">
								<a href="#notifications" class="dropdown-toggle" data-toggle="dropdown" style="margin-top:5px;">
									<span class="label">2</span>
									<i class="nav-icon fa fa-bullhorn"></i>
									<span class="small-screen-text">Notifications</span>
								</a>

								<!-- NOTIFICATIONS -->
								
								<!-- Javascript -->
								<script>
									init.push(function () {
										$('#main-navbar-notifications').slimScroll({ height: 250 });
									});
								</script>
								<!-- / Javascript -->

								<div class="dropdown-menu widget-notifications no-padding" style="width: 300px">
									<div class="notifications-list" id="main-navbar-notifications">

										<div class="notification">
											<div class="notification-title text-danger">CVS Commit Error</div>
											<div class="notification-description"><strong>Error 500</strong>: 4 files cannot able to commit, please check out and commit.</div>
											<div class="notification-ago">12h ago</div>
											<div class="notification-icon fa fa-hdd-o bg-danger"></div>
										</div> <!-- / .notification -->

										<div class="notification">
											<div class="notification-title text-info">CVS New Files</div>
											<div class="notification-description">You have <strong>9</strong> new files.</div>
											<div class="notification-ago">12h ago</div>
											<div class="notification-icon fa fa-truck bg-info"></div>
										</div> <!-- / .notification -->

									</div> <!-- / .notifications-list -->
									<!--  <a href="#" class="notifications-link">MORE NOTIFICATIONS</a> -->
								</div> <!-- / .dropdown-menu -->
							</li>
							
							<li>&nbsp;</li>
							
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
					<div class="text-bg"><span class="text-slim">Welcome,</span> <span class="text-semibold">Kumar</span></div>
					<!--  <img src="assets/demo/avatars/1.jpg" alt="" class=""> -->
					<img src="https://vzweb2.verizon.com/sites/wireline/files/media/user/secondary/jpegphoto_4286368450.jpg?timestamp=1456231263" alt="" class="">
					
				</div>
			</div>
			<ul id="mainMenu" class="navigation">
				<li>
					<a href="index.jsp"><i class="menu-icon fa fa-dashboard"></i><span class="mm-text">Home</span></a>
				</li>
				<li>
					<a href="index.jsp?path=home/Quote"><i class="menu-icon fa fa-folder-o"></i><span class="mm-text">Quote</span></a>
				</li>
				<li>
					<a href="index.jsp?path=home/SFDC"><i class="menu-icon fa fa-folder-o"></i><span class="mm-text">SFDC</span></a>
				</li>
				<li>
					<a href="index.jsp?path=home/Contract"><i class="menu-icon fa fa-folder-o"></i><span class="mm-text">Contract</span></a>
				</li>
				<li>
					<a href="index.jsp?path=home/Price"><i class="menu-icon fa fa-folder-o"></i><span class="mm-text">Price</span></a>
				</li>
				
			</ul> <!-- / .navigation -->
			<!--  
			<div class="menu-content">
				<a href="pages-invoice.html" class="btn btn-primary btn-block btn-outline dark">Create Invoice</a>
			</div>
			 -->
		</div> <!-- / #main-menu-inner -->
	</div> <!-- / #main-menu -->
	<!-- /4. $MAIN_MENU -->

	<div id="content-wrapper">
		
		<ul class="breadcrumb breadcrumb-page" style="margin-top:-12px; float:left;">
			<div class="breadcrumb-label text-light-gray" style="padding-right:10px;">You are here: </div>
			<li class="active b-home"><a href="index.jsp">Home</a></li>
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
						<form id="frmSearch" onsubmit="return searchResults(this);" action="#" class="col-xs-12 col-sm-6" style="float:right;">
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
				
		
			<div class="dropzone-box dz-clickable" id="dropzonejs-example" style="min-height:84px;">
				<div class="dz-default dz-message">
					<i class="fa fa-cloud-upload"></i>
					Drop files in here<br><span class="dz-text-small">or click to pick manually</span>
				</div>
				<form action="//dummy.html">
					
				</form>
			</div>
			
			<br style="clear:both;" />
			
				<!-- 
			<div class="col-md-3 col-sm-4">
		      <p>
		        <i class="fa fa-spinner fa-spin fa-3x fa-fw margin-bottom"></i>
		        <i class="fa fa-circle-o-notch fa-spin fa-3x fa-fw margin-bottom"></i>
		        <i class="fa fa-refresh fa-spin fa-3x fa-fw margin-bottom"></i>
		        <i class="fa fa-cog fa-spin fa-3x fa-fw margin-bottom"></i>
		        <i class="fa fa-spinner fa-pulse fa-3x fa-fw margin-bottom"></i>
		      </p>
		    </div>
			 -->
			 
			<div id="divTblDocsLoading" style="display:none;">
				<p><i class="fa fa-refresh fa-spin fa-3x fa-fw"></i> Loading... Please wait...</p>
			</div>
			
			<!-- Primary table -->
			<div id="divTblDocs" class="table-primary">
							
			</div>
			
			<table id="tblGetDocs" class="table table-striped table-hover" style="display:none;">
				<thead>
					<tr>
						<th clas="no-sort">#</th>
						
						<th>Name</th>
						<th>Modified</th>
						<th>Modified By</th>
						<th>Created</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
			<!-- / Primary table -->
		</div>
		
		<div id="divSearchResultsLoading" style="display:none;">
		<!-- Primary table -->
			<div id="divTblSearchDocs" class="table-primary">
				<table id="tblSearchDocs" class="table table-striped table-bordered"></table>
				
				<table id="tblSearchGetDocs" class="table table-striped table-hover">
					<thead>
						<tr>
							<th>#</th>
							
							<th>Search Results</th>
							
						</tr>
					</thead>
					<tbody></tbody>
				</table>
			</div>
			<!-- / Primary table -->
		
		</div>
		<div id="divSearchResults"></div>
		
		<div id="divContent" style="display:none;">
			sdgjasg a;sjgfd9a4jas asdflgkapsofgi ,masfg npoasfgi34masgfd asfg Kumar sdgjasg a;sjgfd9a4jas asdflgkapsofgi ,masfg npoasfgi34masgfd asfg Kumar
			sdgjasg a;sjgfd9a4jas asdflgkapsofgi ,masfg npoasfgi34masgfd asfg Kumar sdgjasg a;sjgfd9a4jas asdflgkapsofgi ,masfg npoasfgi34masgfd asfg Kumar
			sdgjasg a;sjgfd9a4jas asdflgkapsofgi ,masfg npoasfgi34masgfd asfg Kumar sdgjasg a;sjgfd9a4jas asdflgkapsofgi ,masfg npoasfgi34masgfd asfg Kumar
			sdgjasg a;sjgfd9a4jas asdflgkapsofgi ,masfg npoasfgi34masgfd asfg Kumar sdgjasg a;sjgfd9a4jas asdflgkapsofgi ,masfg npoasfgi34masgfd asfg Kumar
			
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
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
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
		
<!-- Modal -->
<div id="divFileProp" class="modal fade" tabindex="-1" role="dialog" style="display: none;">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
				<h4 class="modal-title" id="myModalLabel"></h4>
			</div>
			<div class="modal-body">
				
			</div>
			<div class="modal-footer">
				<!--  <button type="button" class="btn btn-primary">Save changes</button> -->
				<button type="button" class="btn btn-default" data-dismiss="modal">Ok</button>
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
				<button type="button" class="close" data-dismiss="modal">�</button>
				<h3 class="modal-title">Upload Document</h3>
			</div>
			
			<form id="file_upload_form" method="post" enctype="multipart/form-data" action="UploadServlet">
			
				<div class="modal-body">
					<div id="upload-form" class="form-group">
							<input type="file" id="fileupload" name="img[]" class="file" data-url="UploadServlet" multiple />
							<div id="upload" style="display: none;">Uploading..</div>
							<div id="message"></div>
							
							<div class="row" style="margin-bottom:10px;">
							<!-- 	<input id="upload-btn" type="file" /> -->
								<input name="file" id="upload-btn" type="file" />
							</div>
							
							<div class="row" style="margin-bottom:10px;">
								<input id="txtGSAMID" class="form-control" type="text" placeholder="GSAM ID">
								<input id="txtPath" type="hidden" value="" />
							</div>
							
							<div class="row" style="margin-bottom:10px;">
								<label for="comment">Version Comment:</label>
								<textarea class="form-control" rows="5" id="comment"></textarea>
							</div>
						
					</div>
				</div>
				
				<div class="modal-footer">
					<!-- <button class="btn btn-default" id="btnUploadModalSubmit">Submit</button> -->
					<input class="btn btn-default" type="submit" name="action" value="Upload" />
					<iframe id="upload_target" name="upload_target" src="" style="width:0;height:0;border:0px solid #fff;"></iframe>
					<!--  <button class="btn btn-default" data-dismiss="modal">Close</button> -->
				</div>
				
			</form>
			
		</div>
	</div>
</div>

<!-- End Modal Box -->
		
		

<!-- Get jQuery from Google CDN -->
<!--[if !IE]> -->
	<script type="text/javascript"> window.jQuery || document.write('<script src="assets/javascripts/jquery.min.js">'+"<"+"/script>"); </script>
<!-- <![endif]-->
<!--[if lte IE 9]>
	<script type="text/javascript"> window.jQuery || document.write('<script src="assets/javascripts/jquery1.8.3.min.js">'+"<"+"/script>"); </script>
<![endif]-->


<script src="assets/javascripts/jquery.dataTables.min.js"></script>
<script src="assets/javascripts/bootstrap.min.js"></script>
<script src="assets/javascripts/bootstrap-table.js"></script>
<script src="assets/javascripts/pixel-admin.min.js"></script>
<!--  Upload -->
<script src="assets/javascripts/upload/jquery.ui.widget.js"></script>
<script src="assets/javascripts/upload/jqueryupload.js"></script>
<!--  / Upload -->

<script src="assets/javascripts/jquery.validate.min.js"></script>
<!-- <script src="assets/javascripts/pace_min.js"></script>  -->

<script type="text/javascript">
	var _path = "<%= request.getParameter("path") %>";
	_path = _path=="null" ? "home" : _path;
	
	if(_path!="home"){
		$("ul.breadcrumb").find('li.active').removeClass('active');
		$("ul.breadcrumb").append("<li class=\"active\"><a href=\"index.jsp?path="+ _path +"\">"+_path.replace("home/","")+"</a></li>");
	}
	
</script>

<script src="assets/javascripts/custom.js"></script>
<script src="assets/javascripts/home.js"></script>
<script src="assets/javascripts/hilitor.js"></script>

</body>
</html>