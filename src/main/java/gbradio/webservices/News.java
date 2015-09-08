package gbradio.webservices;

import gbradio.entities.Post;
import gbradio.managers.Bibliotheque;

import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;

import com.google.gson.Gson;


@Path("/news")
public class News {
	private Gson gson;
	
	public News(){
		this.gson = new Gson();
	}
	
	@GET
	public Response loadNews() {
		
		String resp = gson.toJson(gson.toJsonTree(Bibliotheque.getInstance().listerPosts()));
		
		return Response.status(200).entity(resp).build();
	}
	
	@GET
	@Path("{id}")
	public Response loadOneNews(@PathParam("id") String idT ){
		Integer id = Integer.parseInt(idT);
		String resp = gson.toJson(Bibliotheque.getInstance().getPost(id));
		
		return Response.status(200).entity(resp).build();
	}
	
	@POST
	@Path("{id}")
	public Response updateNews(@FormParam("postT") String postT){
		Post post = gson.fromJson(postT, Post.class);
		
		
		
		return Response.status(200).build();
	}

}
