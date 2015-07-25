package gbradio.entities;

import java.util.Date;

/*  Objet Post avec ses différents paramètres  */ 

public class Post {
	private Integer id;
	private String title;
	private String body;
	private String link;
	private String soundlink;
	private Type type;
	private Date created;
	private Date modified;
	
	
	public Post(Integer id, String title, String body, String link, String soundlink, Type type, Date created, Date modified){
		super();
		this.id = id;
		this.title = title;
		this.body = body;
		this.link = link;
		this.soundlink=soundlink;
		this.type=type;
		this.created=created;
		this.modified=modified;
		
	}

	/*  Fonction permettant de récupérer les éléments de l'objet Post   */

	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getBody() {
		return body;
	}


	public void setBody(String body) {
		this.body = body;
	}


	public String getLink() {
		return link;
	}


	public void setLink(String link) {
		this.link = link;
	}


	public String getSoundlink() {
		return soundlink;
	}


	public void setSoundlink(String soundlink) {
		this.soundlink = soundlink;
	}


	public Type getType() {
		return type;
	}


	public void setType(Type type) {
		this.type = type;
	}

	public Date getCreated() {
		return created;
	}


	public void setCreated(Date created) {
		this.created = created;
	}


	public Date getModified() {
		return modified;
	}


	public void setModified(Date modified) {
		this.modified = modified;
	}


	
	

}
