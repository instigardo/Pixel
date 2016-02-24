package com.pixel.puller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Set;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
import javax.json.JsonReader;

import com.pixel.helper.EnvVariables;
import com.pixel.helper.SQLHelper;

public class JsonCreator {
	SQLHelper help=new SQLHelper();
	public String getfiles(String path) throws SQLException{
		String ss=null;
		ArrayList<String> id=new ArrayList<String>();
		EnvVariables envvar=new EnvVariables();
//		path=path+"/";
		String pathid=path;
		String folderId="";
		if(pathid.equals("home/"))
		folderId=pathid.substring(0,pathid.lastIndexOf("/"));
		else
		folderId=pathid.substring(pathid.lastIndexOf("/")+1)+"/";
		path=path+"/";
		path=path.replace("/", "\\");
		path=path.replace("home", envvar.getCvsDir());
		//path=path.substring(0,path.lastIndexOf("\\"));
		System.out.println(path);//\\\113.128.166.0\shared
		//ArrayList<String> results = new ArrayList<String>();


		File[] files = new File(path).listFiles();
		//If this pathname does not denote a directory, then listFiles() returns null. 

		for (File file : files) {
		    if (file.isFile()||file.isDirectory()) {
		    	if(file.isHidden())continue;
		        id.add(folderId+file.getName());
		    }
		}	
		String createdJson=rebuildJson(id);		
		return createdJson;
	}
	public String rebuildJson(ArrayList<String> id) throws SQLException{
//		JsonReader reader=Json.createReader(new StringReader(receivedJson));
//		JsonObject json=reader.readObject();
//		JsonObject highlighting;
//		JsonArray innercontent;
		String path,filename,last_modified,last_modified_by,created_on,version,type;
		JsonObjectBuilder innerjson=Json.createObjectBuilder();
		JsonArrayBuilder jsontoSend=Json.createArrayBuilder();
//		int itrn=json.getJsonObject("response").getInt("numFound");
//		highlighting=json.getJsonObject("highlighting");
//		Set<String> id=highlighting.keySet();
		for (String string : id) {
			//string="child";
			String query="SELECT dtl.node_name, dtl.node_type, dtl.node_loc, dtl.node_vrsn, dtl.create_dttm, nlog.chng_user, nlog.max_dttm from pixeltm.NODE_DTL dtl join ( SELECT node_id, chng_user, insert_dttm, MAX(insert_dttm) as max_dttm from pixeltm.NODE_LOG where node_id='"+string+"') nlog on dtl.node_id=nlog.node_id where dtl.node_id='"+string+"' and nlog.insert_dttm=max_dttm";
			ResultSet rs=help.Query(query);
			rs.next();
			path=rs.getString("dtl.node_loc");						//from db
			filename=rs.getString("dtl.node_name");					//from db
			last_modified=rs.getString("nlog.max_dttm");			//from db
			last_modified_by=rs.getString("nlog.chng_user");		//from db
			created_on=rs.getString("dtl.create_dttm");				//from db
			version=rs.getString("dtl.node_vrsn"); 					//from db
			type=rs.getString("dtl.node_type");						//from db			
//			innercontent=highlighting.getJsonObject(string).getJsonArray("content");
			innerjson.add("id", string);
			innerjson.add("path", path);
			innerjson.add("name", filename);
			innerjson.add("last_modified", last_modified);
			innerjson.add("last_modified_by", last_modified_by);
			innerjson.add("created_on", created_on);
			innerjson.add("version", version);
			innerjson.add("type", type);
			jsontoSend.add(innerjson.build());
			//break;
		}
		String jsonObj=jsontoSend.build().toString();
		System.out.println(jsonObj);
		return jsonObj;
	}
	
	public static void main(String[] args) throws SQLException {
		JsonCreator jc=new JsonCreator();
		jc.getfiles("home/Contract");
	}
}
