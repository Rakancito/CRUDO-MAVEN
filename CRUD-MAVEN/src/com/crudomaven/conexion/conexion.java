package com.crudomaven.conexion;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;


public class conexion {
	private static BasicDataSource dataSource=null;

	private static DataSource getDataSource() {
		if (dataSource==null) {
			dataSource= new BasicDataSource();
			dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
			dataSource.setUsername("root");
			dataSource.setPassword("iBj056r2.");
			dataSource.setUrl("jdbc:mysql://158.69.22.225:3306/spotify_db");
			dataSource.setInitialSize(20);
			dataSource.setMaxIdle(50);
			dataSource.setMaxTotal(200);
			dataSource.setMaxWaitMillis(10000L);
		}
		return dataSource;
	}
	
	public static Connection getConnection() throws SQLException {
		return getDataSource().getConnection();
	}
}
