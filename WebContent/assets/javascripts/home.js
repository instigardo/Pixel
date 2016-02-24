var toastMessage = [{"title":"Selvan shared a file","message":"Selvan shared 'Contact.docx' file with you!"},
                    {"title":"Himashu shared a file","message":"Himashu shared 'download.docx' file with you!"},
                    {"title":"ishu shared a file","message":"ishu shared 'idw_contract.docx' file with you!"},
                    {"title":"Prakash shared a file","message":"Prakash shared 'ip-access.xlsx' file with you!"},
                    {"title":"Siby shared a file","message":"Siby shared 'revenue-details.xlsx' file with you!"},
                    {"title":"Akash shared a file","message":"Akash shared 'circuit.pdf' file with you!"},
                    {"title":"Kumar shared a file","message":"Kumar shared 'Contact.docx' file with you!"},
                    {"title":"Sathish shared a file","message":"Sathish shared 'Contact.docx' file with you!"}
                    ];

var toastWarningMessage = [{"message":"File is not yet committed!"},
                           {"message":"Folder is created but not committed!"},
                           {"message":"File 'revenue=details.docs' modifed but not committed"},
                           {"message":"File is not yet committed!"},
                           {"message":"Folder is created but not committed!"},
                           {"message":"File 'revenue=details.docs' modifed but not committed"}
                    ];

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
	
	
	$("#dropzonejs-example").dropzone({
		url: "//dummy.html",
		paramName: "file", // The name that will be used to transfer the file
		maxFilesize: 0.5, // MB

		addRemoveLinks : true,
		dictResponseError: "Can't upload file!",
		autoProcessQueue: false,
		thumbnailWidth: 138,
		thumbnailHeight: 120,

		previewTemplate: '<div class="dz-preview dz-file-preview"><div class="dz-details"><div class="dz-filename"><span data-dz-name></span></div><div class="dz-size">File size: <span data-dz-size></span></div><div class="dz-thumbnail-wrapper"><div class="dz-thumbnail"><img data-dz-thumbnail><span class="dz-nopreview">No preview</span><div class="dz-success-mark"><i class="fa fa-check-circle-o"></i></div><div class="dz-error-mark"><i class="fa fa-times-circle-o"></i></div><div class="dz-error-message"><span data-dz-errormessage></span></div></div></div></div><div class="progress progress-striped active"><div class="progress-bar progress-bar-success" data-dz-uploadprogress></div></div></div>',

		resize: function(file) {
			var info = { srcX: 0, srcY: 0, srcWidth: file.width, srcHeight: file.height },
				srcRatio = file.width / file.height;
			if (file.height > this.options.thumbnailHeight || file.width > this.options.thumbnailWidth) {
				info.trgHeight = this.options.thumbnailHeight;
				info.trgWidth = info.trgHeight * srcRatio;
				if (info.trgWidth > this.options.thumbnailWidth) {
					info.trgWidth = this.options.thumbnailWidth;
					info.trgHeight = info.trgWidth / srcRatio;
				}
			} else {
				info.trgHeight = file.height;
				info.trgWidth = file.width;
			}
			return info;
		}
	});
	
	/*$('#jq-growl-small').click(function () {
		$.growl({ title: "Growl", message: "The kitten is awake!", size: 'small' });
	});
	*/
	

	window.setInterval(function(){
		var index = Math.floor(Math.random() * toastMessage.length);
		traceErr("toastMessage index " + index);
		$.growl({ title: toastMessage[index]["title"], message: toastMessage[index]["message"], size: 'medium' });
	},11000);
	
	window.setInterval(function(){
		var index2 = Math.floor(Math.random() * toastWarningMessage.length);
		traceErr("toastWarningMessage index " + index2);
		$.growl.warning({ message: toastWarningMessage[index2]["message"] });
	},17000);
	
	
	/*
	var self = this;
	$('#page-breadcrumb-demo-btn').on('click', function () {
		var $b = $('#page-breadcrumb-demo');
		if ($b.is(':visible')) {
			$b.css('display', 'none');
			$(this).text('Add page breadcrumb');
		} else {
			// Display breadcrumb after alerts
			var $cont = $('#' + self.plugins.alerts.getContainerId());
			if ($cont.length) {
				$cont.after($b);
			} else {
				$('#content-wrapper').prepend($b);
			}
			$b.css('display', 'block');
			$(this).text('Remove page breadcrumb');
			$('html,body').animate({ scrollTop: 0 }, 500);
		}
	});
	*/
	
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
		
	getDocs2();
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
					//PixelAdmin.plugins.alerts.add("<i class=\"fa fa-check-circle\"></i> '"+ result +"' folder has been created successfully!", options);
					
					$.ajax({
						url :"CvsCreateFolder",
						type:"post",
						data :{"path":_path,"name":result},
						success:function(res){
							
						},
						error:function(e){
							
						}
					});
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