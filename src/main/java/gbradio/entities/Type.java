package gbradio.entities;

/*  Objet Type avec ses différents paramètres  */

public class Type {
	private Integer type_link;
	private String theme;
	private String picture;
	

	public Type(Integer type_link, String theme, String picture) {
		super();
		this.type_link = type_link;
		this.theme=theme;
		this.picture = picture;
		
	}


	/*  Fonction permettant de récupérer les éléments de l'objet Type   */
	
	public Integer getType_link() {
		return type_link;
	}


	public void setType_link(Integer type_link) {
		this.type_link = type_link;
	}

	public String getTheme() {
		return theme;
	}


	public void setTheme(String theme) {
		this.theme = theme;
	}


	public String getPicture() {
		return picture;
	}


	public void setPicture(String picture) {
		this.picture = picture;
	}

	
	

	
}
