/*
 * Process the ResultSet Sent (sent from MoviePersist) and build HTML String for freeMarker
 */
package logiclayer;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

public class LogicImpl {
	ArrayList<String> html = new ArrayList<String>();
	String queryResultString = " ";
	String set ="";
	int amount;
	/**
	 * @param rset
	 * @return string
	 * Returns a string of users full name
	 */
	public String getFullName(ResultSet rset){
		set="";
		try{
			ResultSetMetaData rMeta = rset.getMetaData();
			amount=rMeta.getColumnCount();
			while(rset.next()){
				for(int i=1; i<amount+1; i++){
					set+=rset.getString(i)+" ";
				}
			}//while
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return set;
	}
	
	public String getresults(ResultSet rset){
		set="";
		try{
			ResultSetMetaData rMeta = rset.getMetaData();
			amount=rMeta.getColumnCount();
			while(rset.next()){
				for(int i=1; i<amount+1; i++){
					set+=rset.getString(i)+"<br/>";
				}
			}//while
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return set;
	}
	
	public String createFormCheckBox(ResultSet rset) {
		html.clear();
		try {
			ResultSetMetaData rMeta = rset.getMetaData();
			int amount = rMeta.getColumnCount();
			while(rset.next()){
				for(int i=1; i<amount+1; i++){
					html.add("<input type=\"checkbox\" name=\""+"delete"+"\" value=\""+rset.getString(i)+"\""+">"+" "+rset.getString(i)+"<br/>");
				}
				html.add("\n");
			}//while
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return tableString(html);	
	}//genreTable
	
	private String tableString (ArrayList<String> list){
        Iterator it = list.iterator();
        queryResultString = "";
		while(it.hasNext()){
			queryResultString += it.next() + "\n";
		}
		return queryResultString;
	}//tableString
	
}//class









