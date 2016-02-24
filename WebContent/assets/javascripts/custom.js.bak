function getDocs(){
	$('#tblDocs').bootstrapTable({
	    url: 'getDocs?path='+_path,
	    pagination : true,
	    sortable : true,
	    columns: [
					{"field": "type",			"title": "ico-type"},
					{"field": "id",				"title": "sno"},
					{"field": "name",			"title": "Name"},
					{"field": "last_modified",	"title": "Modified"},
					{"field": "last_modified_by","title": "Modified By"},
					{"field": "created_on",		"title": "Created"},
					{"field": "version",		"title": "Version"}
			]
	});
}

function getDocs2(){
	$.ajax({
		url: 'getDocs?path='+_path,
		type:"get",
		dataType : "json",
		success : function(result){
			if(result.length>0){
				vzTable("tblGetDocs",result);
				
				$("#tblGetDocs").find("div.panel-heading-controls").hide();
				
				$("#tblGetDocs tr").hover(
						function(){
							$(this).find("div.panel-heading-controls").show();
						},
						function(){
							$(this).find("div.panel-heading-controls").hide();
						}
				);
				
				$("#tblGetDocs").dataTable();
			}else{
				$("#tblGetDocs").find('thead').remove();
				$("#tblGetDocs").find('tbody').append("<tr><td>There are no documents in this view.</td></tr>");
			}
		},
		error:function(e){
			
		}
	});
		
	//url: 'getDocs.jsp?d='+new Date().getTime(),
	
}

var strSearchTemplate = "<div class=\"panel\" id='div_SNO_'><div class=\"panel-body\"><div><a href=\"#\" rel=\"_ID_\"><span class='_TYPE_'></span>_NAME_</a></div><div>_CONTENT_</div><div>_PATH_</div></div></div></div>";
function searchResults(frm){
	//Hide the table container
	$("#divContentContainer, #divCreate, #divUpload").hide();
	$(frm).css("float","left");
	$("#divSearchResultsLoading").show();
	
	$.ajax({
		url : "searched.jsp?d=" + new Date().getTime(),
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
	var rowTemplate="<tr><td><i class=\"menu-icon fa _TYPE_\"></i></td><td class='cellName'><a href=\"_URL_\" rel=\"_ID_\">_NAME_</a>_PROP_</td><td>_MODIFIED_</td><td>_MODIFIEDBY_</td><td>_CREATED_</td></tr>";
	var row="";
	var rows="";
	if(json.length>0){
        for (var i = 0; i < json.length; i++) {
        	row=rowTemplate;
        	row=row.replace("_SNO_",i+1);
        	switch(json[i]["type"]){
        		case "folder":
        			row=row.replace("_TYPE_","fa-folder-o");
                	row=row.replace("_URL_","index.jsp?path="+_path + "/" + json[i]["name"]);
        			break;
				case "xlsx":
        		case "xls":
        			row=row.replace("_TYPE_","fa-file-excel-o");
        			break;
        		case "docx":
        		case "doc":
        			row=row.replace("_TYPE_","fa-file-word-o");
        			break;
        		default:
        			
        			row=row.replace("_TYPE_","fa-file-o");
        			//row=row.replace("_TYPE_","fa-file-text-o");
        			break;
        	}
        	row=row.replace("_URL_","javascript:void(0);");
        	row=row.replace("_ID_",json[i]["id"]);
        	row=row.replace("_NAME_",json[i]["name"]);
        	row=row.replace("_MODIFIED_",json[i]["last_modified"]);
        	row=row.replace("_MODIFIEDBY_",json[i]["last_modified_by"]);
        	row=row.replace("_CREATED_",json[i]["created_on"]);
        	
        	var propHTML = "<div id='divProp_"+json[i]["id"]+"' class='panel-heading-controls'><button rel='"+json[i]["id"]+"' class='btn btn-sm btn-default btn-outline'><span class='fa fa-file-text-o'></span></button><button rel='"+json[i]["id"]+"' class='btn btn-sm btn-default btn-outline'><span class='fa fa-pencil fa-fw'></span></button><button rel='"+json[i]["id"]+"' class='btn btn-xs btn-danger btn-outline'><span class='fa fa fa-trash-o fa-fw'></span></button><button rel='"+json[i]["id"]+"' class='btn btn-xs btn-default btn-outline'><span class='fa fa-lock'></span></button></div>";
        	
			row=row.replace("_PROP_",propHTML);
        	rows+=row;
        }
	    $("#" + tableID).find('tbody').append(rows);
	}
}