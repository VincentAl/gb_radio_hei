package gbradio.managers;


import gbradio.dao.PostDao;
import gbradio.dao.TypeDao;
import gbradio.dao.impl.PostDaoMysqlImpl;
import gbradio.dao.impl.TypeDaoMysqlImpl;
import gbradio.entities.Post;
import gbradio.entities.Type;

import java.util.List;

/*  Classe permettant de faire le lien entre les requètes SQL et les fonctions des classes PostDao et TypeDao  */

public class Bibliotheque {

	private static Bibliotheque instance;
	private TypeDao typeDao;
	private PostDao postDao; 

	public static Bibliotheque getInstance() {
		if (instance == null) {
			instance = new Bibliotheque();
		}
		return instance;
	}


	private Bibliotheque(){
		 typeDao = new TypeDaoMysqlImpl();
		 postDao = new PostDaoMysqlImpl();
	}

	public List<Post> listerPosts() {
		return postDao.listerPosts();
	}
	
	public List<Post> listerThemes(Integer type_id) {
		return postDao.listerThemes(type_id);
	}

	public Post getPost(Integer id) {
		return postDao.getPost(id);
	}
	
	public Post getThemePost(Integer type_id) {
		return postDao.getThemePost(type_id);
	}
	
	public List<Type> listerType() {
		return typeDao.listerType();
	}
	
	public Type getType(Integer type_link){
		return typeDao.getType(type_link);
	}
	
	public Post createPost(Post post){
		return postDao.createPost(post);
	}
	
	public Post updatePost(Post post){
		return postDao.updatePost(post);
	}
	
}
