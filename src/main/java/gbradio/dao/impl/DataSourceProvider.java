package gbradio.dao.impl;

import javax.sql.DataSource;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

/*  Connection à la BDD de GB Radio  */

public class DataSourceProvider {

	private static MysqlDataSource dataSource;

	public static DataSource getDataSource() {
		if (dataSource == null) {
			dataSource = new MysqlDataSource();
			//dataSource.setServerName("127.2.193.130");
			dataSource.setServerName("127.0.0.1");
			dataSource.setPort(3306);
			dataSource.setDatabaseName("gbradio");
			//dataSource.setUser("adminhDay8hR");
			//dataSource.setPassword("8-Hv4fv7I9mi");
			dataSource.setUser("root");
			dataSource.setPassword("");
		}
		return dataSource;
	}
}
