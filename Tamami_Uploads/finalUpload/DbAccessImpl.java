package persistlayer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

// implements the DbAccessInterface interface

public class DbAccessImpl implements DbAccessInterface{
	//Connection con = null;
	@Override //Load the Driver and Establish a Connection
	public Connection connect() {
		Connection con = null;
        try {
                Class.forName(DbAccessConfiguration.DB_DRIVE_NAME);
                con = DriverManager.getConnection(DbAccessConfiguration.DB_CONNECTION_URL, DbAccessConfiguration.DB_CONNECTION_USERNAME, DbAccessConfiguration.DB_CONNECTION_PASSWORD);
        }catch (ClassNotFoundException e){
                e.printStackTrace();
        }catch (SQLException e){
                e.printStackTrace();
        }
        return con;
	}//connect

	@Override //execute query 
	public ResultSet retrieve(Connection con, String query) {
		ResultSet rset = null;
		try {
			System.out.println(query);
			Statement stmt = (Statement) con.createStatement();
			rset = stmt.executeQuery(query);
			if(rset.next() == false)
			{

				rset = null;
				return rset;
			}
			
			return rset;
		} catch (SQLException e) {
			e.printStackTrace();
			return rset;
		}
	}//ResultSet
	
	
	

	@Override
	//Create new Row in Table from the query passed in
	public int create(Connection con, String query) {
		int count = 0;
		try{
			System.out.println(query);
			Statement stmt = con.createStatement();
            count = stmt.executeUpdate(query);
            return count;
        }catch (SQLException e){
            e.printStackTrace();
            return count;
        }
	}//create

	@Override
	public int update(Connection con, String query) {
		// TODO Auto-generated method stub
		return 0;
	}//update

	@Override
	public int delete(Connection con, String query) {
		int count = 0;
		try{
			Statement stmt = con.createStatement();
            count = stmt.executeUpdate(query);
            return count;
        }catch (SQLException e){
            e.printStackTrace();
            return count;
        }
	}//delete

	@Override
	public void disconnect(Connection con) {
		// TODO Auto-generated method stub
		
	} 

}
