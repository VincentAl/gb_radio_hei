package gbradio.dao.impl;

import gbradio.dao.TypeDao;
import gbradio.entities.Type;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/*  Liste des requètes SQL permettant de récuperer les données de la table types de la BDD  */

public class TypeDaoMysqlImpl implements TypeDao {
	
	/*  Lister tous les types présents dans la table  */
	
	@Override
	public List<Type> listerType() {
		List<Type> types = new ArrayList<Type>();
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			Statement stmt = connection.createStatement();

			ResultSet rs = stmt.executeQuery("SELECT * FROM type ORDER BY type_link");
			while (rs.next()) {
				types.add(new Type(rs.getInt("type_link"), rs.getString("theme"),rs.getString("picture")));
			}
			connection.close();
			return types;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	/*  Récuperer un type en fonction de son id  */
	
	@Override
	public Type getType(Integer id) {
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM type WHERE type_link = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				return new Type(rs.getInt("type_link"), rs.getString("theme"),rs.getString("picture"));
			}

			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}


}
