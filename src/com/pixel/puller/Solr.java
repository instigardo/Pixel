package com.pixel.puller;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

import org.glassfish.jersey.client.ClientConfig;

@Path("/solrJson")
public class Solr {

	String jsonString;

	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String JsonGet() {
		//portfolioDateStore pds=new portfolioDateStore();
		//String billingDate=pds.getBdate();//"23-JAN-2001";
		//String portfolio=pds.getPortfolio();
		ClientConfig config = new ClientConfig();
		Client client = ClientBuilder.newClient(config);
		WebTarget target = client.target("http://113.128.161.154:8983/solr")
				.path("techproducts").path("browse").queryParam("q", "Contract").queryParam("wt", "json").queryParam("hl", "true").queryParam("hl.fl", "content").queryParam("fl", "text").queryParam("facet", "false").queryParam("responseHeader", "false");
		// getting String data
		jsonString = target.request(MediaType.TEXT_PLAIN).get(String.class);
		//System.out.println(jsonString);
		//http://113.128.161.154:8983/solr/techproducts/browse?&q=any&wt=xml&hl=true&hl.fl=content&fl=text&facet=false
//		jsonString="{\"accountNo\":[\"501\",\"502\",\"503\"],\"totalNumOfAcc\":\"3\"}";	
		return jsonString;
	}
//	http://113.128.161.154:8983/solr/techproducts/browse?&q=any&wt=json&hl=true&hl.fl=content&fl=text&facet=false&responseHeader=false
	public String getJsonString() {
		return jsonString;
	}
	public static void main(String[] args) {
		Solr ac=new Solr();
		System.out.println(ac.JsonGet());
	}
}
