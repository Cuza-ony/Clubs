package databaseAccess;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public interface DbAccessInterface{
	
	public Connection connect() throws SQLException;
	
	public ResultSet retrieve (Connection con, String query) throws SQLException;

	public int create (Connection con, String query) throws SQLException;
	
	public int update (Connection con, String query) throws SQLException;
	
	public int delete (Connection con, String query) throws SQLException;
	
	public void disconnect(Connection con) throws SQLException;

}
