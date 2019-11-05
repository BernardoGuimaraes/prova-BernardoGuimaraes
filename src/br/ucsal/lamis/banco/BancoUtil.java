package br.ucsal.lamis.banco;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.DriverManager;

public class BancoUtil {
	private static Connection connection;
	static {
		try {
			Class.forName("org.hsqldb.jdbc.JDBCDriver");
			connection = DriverManager.getConnection("jdb:hsqldb:hsql://localhost/banco", "SA", "");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() {
		return connection;
	}

}
