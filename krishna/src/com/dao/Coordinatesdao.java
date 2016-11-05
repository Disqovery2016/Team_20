

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.beans.Coordinates;

public class Coordinatesdao {
	
	private ResultSet rs;
	private PreparedStatement ps;

	public String STBAdd(Connection con, Coordinates stbI) throws SQLException {
		
		try
		{
			ps=con.prepareStatement("");
			ps.setString(1,	stbI.getlatitude());
			ps.setString(2,	stbI.getlongitude());
			
			int result=ps.executeUpdate();
			if(result>0)
			{
				return stbI.getlatitude();
			}
			else
				return "sorry";

		}
		finally
		{
			
		}
		
	}

	public Coordinates STBView(Connection con, String serial) throws SQLException {
		
		try
		{
			ps=con.prepareStatement("select * from tbl_STBinventory where SERIALNUMBER=?");
			ps.setString(1,serial);
			rs=ps.executeQuery();
			Coordinates stbI=new Coordinates();
			if(rs.next())
			{
				stbI.set(rs.getString("latitude"));
				stbI.set(rs.getString("longititude"));
				
				return stbI;
			}
			return null;
		}
		finally
		{
			
		}
		
	}

	public int STBDelete(Connection con, String serial) throws SQLException {
		
		ps=con.prepareStatement("");
		ps.setString(1,serial);
		int result=ps.executeUpdate();
		if(result>0)
			return result;
		else
			return -9999;
	}
	

}
