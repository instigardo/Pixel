package com.pixel.puller;

import java.io.StringReader;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Set;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
import javax.json.JsonReader;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

import org.glassfish.jersey.client.ClientConfig;

import com.pixel.helper.SQLHelper;

@Path("/solrJson")
public class Solr {

	String jsonString;

	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String JsonGet(String searchQuery) throws SQLException {		
		ClientConfig config = new ClientConfig();
		Client client = ClientBuilder.newClient(config);
		WebTarget target = client.target("http://113.128.161.154:8983/solr")
				.path("techproducts").path("browse").queryParam("q", searchQuery).queryParam("wt", "json").queryParam("hl", "true").queryParam("fl", "text").queryParam("facet", "false").queryParam("responseHeader", "false");
		// getting String data
		jsonString = target.request(MediaType.TEXT_PLAIN).get(String.class);
		//jsonString="{ \"responseHeader\": { \"status\": 0, \"QTime\": 59, \"params\": { \"q\": \"Contract\", \"hl\": \"true\", \"fl\": \"text\", \"responseHeader\": \"false\", \"hl.fl\": \"content\", \"wt\": \"json\", \"facet\": \"false\" } }, \"response\": { \"numFound\": 5, \"start\": 0, \"docs\": [{}, {}, {}, {}, {}] }, \"highlighting\": { \"test1\": { \"content\": [\"\"] }, \"pdf1\": { \"content\": [\"\"] }, \"contract1\": { \"content\": [\"\"] }, \"html1\": { \"content\": [\"\"] }, \"J54996-00-2234_ESA_Master_SOF.pdfhtml1\": { \"content\": [\"\"] } }, \"spellcheck\": { \"suggestions\": [], \"collations\": [] } }";
		JsonArray jarray = rebuildJson(jsonString);

		return jarray.toString();
	}
	//	http://113.128.161.154:8983/solr/techproducts/browse?&q=any&wt=json&hl=true&hl.fl=content&fl=text&facet=false&responseHeader=false
	public String getJsonString() {
		return jsonString;
	}

	SQLHelper help=new SQLHelper();
	public JsonArray rebuildJson(String receivedJson) throws SQLException{
		JsonReader reader=Json.createReader(new StringReader(receivedJson));
		JsonObject json=reader.readObject();
		JsonObject highlighting;
		JsonArray innercontent;
		String path,filename,last_modified,last_modified_by,created_on,version,type;
		JsonObjectBuilder innerjson=Json.createObjectBuilder();
		JsonArrayBuilder jsontoSend=Json.createArrayBuilder();
		int itrn=json.getJsonObject("response").getInt("numFound");
		highlighting=json.getJsonObject("highlighting");
		Set<String> id=highlighting.keySet();
		for (String string : id) {
			//	String query="";
			//	ResultSet rs=help.Query(query);
			String query="SELECT dtl.node_name, dtl.node_type, dtl.node_loc, dtl.node_vrsn, dtl.create_dttm, nlog.chng_user, nlog.max_dttm from pixeltm.NODE_DTL dtl join ( SELECT node_id, chng_user, insert_dttm, MAX(insert_dttm) as max_dttm from pixeltm.NODE_LOG where node_id='"+string+"') nlog on dtl.node_id=nlog.node_id where dtl.node_id='"+string+"' and nlog.insert_dttm=max_dttm";
			ResultSet rs=help.Query(query);
			if(rs.next()){
				path=rs.getString("dtl.node_loc");						//from db
				filename=rs.getString("dtl.node_name");					//from db
				last_modified=rs.getString("nlog.max_dttm");			//from db
				last_modified_by=rs.getString("nlog.chng_user");		//from db
				created_on=rs.getString("dtl.create_dttm");				//from db
				version=rs.getString("dtl.node_vrsn"); 					//from db
				type=rs.getString("dtl.node_type");						//from db	

				//			path="f1/f2";						//from db
				//			filename=string;					//from db
				//			last_modified="23131-231-13";		//from db
				//			last_modified_by="Dsda"; 			//from db
				//			created_on="231321-2321-31";		//from db
				//			version="1.2.3";  					//from db
				//			type="xlsx";  						//from db
				innercontent=highlighting.getJsonObject(string).getJsonArray("content");
				innerjson.add("id", string);
				innerjson.add("content", innercontent);
				innerjson.add("path", path);
				innerjson.add("name", filename);
				innerjson.add("last_modified", last_modified);
				innerjson.add("last_modified_by", last_modified_by);
				innerjson.add("created_on", created_on);
				innerjson.add("version", version);
				innerjson.add("type", type);
				jsontoSend.add(innerjson.build());
			}
		}
		JsonArray jsonObj=jsontoSend.build();//.toString();
		System.out.println(jsonObj);
		return jsonObj;
	}

	public static void main(String[] args) throws SQLException {
		Solr ac=new Solr();
		System.out.println(ac.JsonGet("Contract"));
	}
}
