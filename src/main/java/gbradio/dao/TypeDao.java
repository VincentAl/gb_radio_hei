package gbradio.dao;

import gbradio.entities.Type;

import java.util.List;

/*  Liste des fonctions qui utilise l'objet Type  */

public interface TypeDao {
	public List<Type> listerType();

	public Type getType(Integer type_link);
	
	
}

