var vzDriveTable;

function getFolderDocs(aObj){
	_path = $(aObj).attr("rel");
	getDocs(_path);
	
	//Add Bread Crumb
	var arr = _path.split("/");
	$("ul.breadcrumb").find('li').not('.b-home').remove();
	for(var i=1; i<arr.length; i++){
		var css=i==arr.length-1 ? " class='active' " : "";
		$("ul.breadcrumb").append("<li "+css+"><a href='javascript:void(0);' onclick='getFolderDocs(this);'>"+arr[i]+"</a></li>");	
	}
}
function getDocs(path){
	$("#divTblDocsLoading").show();
	$.ajax({
		url: 'getDocs?path='+path,
		//url: 'getDocs.jsp?path='+path,
		type:"get",
		dataType : "json",
		success : function(result){
			var t = new Date().getTime();
			$("#divTblDocs").find("div.dataTables_wrapper").remove();
			$("#divTblDocs").find("table.vzDriveTable").remove();	//remove no records table
			
			var $t = $("#tblGetDocs").clone();
			var tblID = "tblGetDocs"+t;
			$t.attr("id","tblGetDocs"+t).addClass("vzDriveTable").show();
			$("#divTblDocs").append($t);
			
			if(result.length>0){
				vzTable(tblID,result);
				
				$("#"+tblID).find("div.panel-heading-controls").find("button.btnProp").on('click', function() {
					var $modal  = $('#divFileProp');
					$modal.find('> div').addClass('modal-dialog modal-sm animated ' + $('#uidemo-modals-effects-select').find(":selected").attr('value'));
					$modal.modal('show');					
				});
				
				$("#"+tblID).find("div.panel-heading-controls").hide();
				
				$("#"+tblID).find("tbody tr").hover(
					function(){
						$(this).find("div.panel-heading-controls").show();
					},
					function(){
						$(this).find("div.panel-heading-controls").hide();
					}
				);
				
				initLinkProp($("#"+tblID).find('tbody tr a.linkFolder'));
				
				/*
				 * columnDefs: [{ targets: 'no-sort', orderable: false }],
			        "bJQueryUI": true,
			        "sDom": 'lrtip'
				 * */
				vzDriveTable = $("#"+tblID).dataTable({searching : false});
				//alert(vzDriveTable);
				
			}else{
				$("#"+tblID).find('thead').remove();
				$("#"+tblID).find('tbody').append("<tr><td>There are no documents in this view.</td></tr>");
			}
			$("#divTblDocsLoading").hide();
		},
		error:function(e){
			$("#divTblDocsLoading").hide();
		}
	});
		
	//url: 'getDocs.jsp?d='+new Date().getTime(),
	
}

function initLinkProp(aArrObj){
	$(aArrObj).each(function(){
		var h =$(this).attr("href").replace("index.jsp?","").replace("index.jsp","");
		h = (h=="") ? "home" : h;
		$(this).attr({"href":"javascript:void(0);","rel":h});
		$(this).click(function(){
			$("#divContentContainer, #divCreate, #divUpload").show();
			$("#frmSearch").css("float","right");
			$("#divSearchResults").empty().hide();
			getFolderDocs(this);
		});
	});
}

var strSearchTemplate = "<div class=\"panel\" id='div_SNO_'><div class=\"panel-body\"><div><a href=\"#\" rel=\"_ID_\"><span class='_TYPE_'></span>_NAME_</a></div><div>_CONTENT_</div><div>_PATH_</div></div></div></div>";
function searchResults(frm){
	//Hide the table container
	$("#divContentContainer, #divCreate, #divUpload").hide();
	$(frm).css("float","left");
	$("#divSearchResultsLoading").show();
	
	$.ajax({
		url : "searched.jsp?d=" + $(frm).find('input:text').val(),
		type:"get",
		dataType : "json",
		success : function(result){
			var strOut="";
			for(var i=0; i<result.length; i++){
				var strTemp = strSearchTemplate;
				strTemp=strTemp.replace("_SNO_",i);
				strTemp=strTemp.replace("_NAME_",result[i]["name"]);
				strTemp=strTemp.replace("_CONTENT_",result[i]["content"]);
				strTemp=strTemp.replace("_PATH_",result[i]["path"]);
				strTemp=strTemp.replace("_ID_",result[i]["id"]);
				strTemp=strTemp.replace("_TYPE_",result[i]["type"]);
				$("#divSearchResults").append(strTemp);
			}
			$("#divSearchResults").show();
			$("#divSearchResultsLoading").hide();
			
			//highlight func
			
		},
		error:function(e){
			//$("#divSearchResults").before().remove();
		}
	});
	return false;
}

function traceErr(msg) {
    $("#divDebug").append("<br /><span style=\"color:#" + Math.floor(Math.random() * 999999) + ";\">" + msg + "</span>");
    if (getCurrentPath().indexOf("localhost:") > 0) $("#divDebug").show(); else $("#divDebug").hide();
}
function getCurrentPath() {
    var strURL = window.location.href;
    var params = "";
    if (strURL.indexOf("?") != -1) {
        params = strURL.substring(strURL.indexOf("?") + 1, strURL.length);
        strURL = strURL.substring(0, strURL.indexOf("?"));
    }
    return strURL.substring(0, strURL.lastIndexOf("/") + 1);
}
function toTitleCase(str)
{
    return str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
}

function vzTable(tableID,json){
	var rows="";
	if(json.length>0){
        for (var i = 0; i < json.length; i++) {
        	rows+=getRow(i,json[i]);
        }
	    $("#" + tableID).find('tbody').append(rows);
	}
}

function getRow(i,json){
	var row="<tr><td><i class=\"menu-icon fa _TYPE_\"></i></td><td class='cellName'><a href=\"_URL_\" rel=\"_ID_\" title=\"_TITLE_\" _CLASS_>_NAME_</a>_PROP_</td><td>_MODIFIED_</td><td>_MODIFIEDBY_</td><td>_CREATED_</td></tr>";
	row=row.replace("_SNO_",i+1);
	switch(json["type"]){
		case "folder":
			row=row.replace("_TYPE_","fa-folder-o");
        	row=row.replace("_URL_","index.jsp?path="+_path + "/" + json["name"]);
        	row=row.replace("_TITLE_",json["type"]);
        	row=row.replace("_CLASS_","class='linkFolder'");
			break;
		case "xlsx":
		case "xls":
			row=row.replace("_TYPE_","fa-file-excel-o");
			break;
		case "docx":
		case "doc":
			row=row.replace("_TYPE_","fa-file-word-o");
			break;
		case "pptx":
		case "ppt":
			row=row.replace("_TYPE_","fa-file-powerpoint-o");
			break;
		case "pdf":
			row=row.replace("_TYPE_","fa-file-pdf-o");
			break;
		case "txt":
			row=row.replace("_TYPE_","fa-file-text-o");
			break;
		case "zip":
			row=row.replace("_TYPE_","fa-file-zip-o");
			break;
		default:
			row=row.replace("_TYPE_","fa-file-o");
			//row=row.replace("_TYPE_","fa-file-text-o");
			break;
	}
	row=row.replace("_URL_","javascript:void(0);");
	row=row.replace("_CLASS_","");
	row=row.replace("_TITLE_",json["name"]);
	row=row.replace("_ID_",json["id"]);
	row=row.replace("_NAME_",json["name"]);
	row=row.replace("_MODIFIED_",json["last_modified"]);
	row=row.replace("_MODIFIEDBY_",json["last_modified_by"]);
	row=row.replace("_CREATED_",json["created_on"]);
	
	var propHTML = "<div id='divProp_"+json["id"]+"' class='panel-heading-controls'><button rel='"+json["id"]+"' class='btn btn-sm btn-default btn-outline btnProp'><span class='fa fa-file-text-o'></span></button><button rel='"+json["id"]+"' class='btn btn-sm btn-default btn-outline btnEdit'><span class='fa fa-pencil fa-fw'></span></button><button rel='"+json["id"]+"' class='btn btn-xs btn-danger btn-outline btnDelete'><span class='fa fa fa-trash-o fa-fw'></span></button><button rel='"+json["id"]+"' class='btn btn-xs btn-default btn-outline btnLock'><span class='fa fa-lock'></span></button></div>";
	
	row=row.replace("_PROP_",propHTML);
	return row;
}