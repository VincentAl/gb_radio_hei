package gbradio.dao.impl;

import gbradio.dao.PostDao;
import gbradio.entities.Post;
import gbradio.entities.Type;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/*  Liste des requètes SQL permettant de récuperer les données de la table posts de la BDD  */

public class PostDaoMysqlImpl implements PostDao {
	
	/*  Lister tous les posts présents dans la table  */
	
	@Override
	public List<Post> listerPosts() {
		List<Post> posts = new ArrayList<Post>();
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			Statement stmt = connection.createStatement();

			ResultSet rs = stmt.executeQuery("SELECT * FROM posts JOIN types ON posts.type_id = types.type_link ORDER BY created DESC");
			while (rs.next()) {
				posts.add(new Post(rs.getInt("id"),rs.getString("title"), rs.getString("body"),rs.getString("link"), 
						rs.getString("soundlink"), new Type(rs.getInt("type_link"), rs.getString("theme"), rs.getString("picture")),  rs.getDate("created"),
						rs.getDate("modified")));
				
			}
			connection.close();
			return posts;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/*  Lister tous les posts présents sur la BDD en fonction de leur thème */
	
	@Override
	public List<Post> listerThemes(Integer type_id) {
		List<Post> posts = new ArrayList<Post>();
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM posts JOIN types ON posts.type_id = types.type_link "
					+ "Where type_id=? ORDER BY created DESC");
			stmt.setInt(1, type_id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				posts.add(new Post(rs.getInt("id"),rs.getString("title"), rs.getString("body"),rs.getString("link"), 
						rs.getString("soundlink"), new Type(rs.getInt("type_link"), rs.getString("theme"), rs.getString("picture")),  rs.getDate("created"),
						rs.getDate("modified")));
				
			}
			connection.close();
			return posts;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	/*  Récuperer un post en fonction de son id pour permettre ensuite de l'afficher  */
	
	@Override
	public Post getPost(Integer id) {
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM posts JOIN types ON posts.type_id = types.type_link WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				return new Post(rs.getInt("id"),rs.getString("title"), rs.getString("body"),rs.getString("link"), 
						rs.getString("soundlink"), new Type(rs.getInt("type_link"), rs.getString("theme"), rs.getString("picture")),  rs.getDate("created"),
						rs.getDate("modified"));
			}
			

			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	/*  Récuperer un theme en fonction de son type_id  */
	
	@Override
	public Post getThemePost(Integer type_id) {
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM posts JOIN types ON posts.type_id = types.type_link WHERE type_id = ? LIMIT 1");
			stmt.setInt(1, type_id);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				return new Post(rs.getInt("id"),rs.getString("title"), rs.getString("body"),rs.getString("link"), 
						rs.getString("soundlink"), new Type(rs.getInt("type_link"), rs.getString("theme"), rs.getString("picture")),  rs.getDate("created"),
						rs.getDate("modified"));
			}
			

			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
