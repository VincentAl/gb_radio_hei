package gbradio.dao;

import gbradio.entities.Post;

import java.util.List;

/*  Liste des fonctions qui utilise l'objet Post  */

public interface PostDao {
	
	public abstract List<Post> listerPosts();

	public abstract Post getPost(Integer id);

	public abstract List<Post> listerThemes(Integer type_id);

	public abstract Post getThemePost(Integer type_id);


}
