package com.qan;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class UserDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    

	
	
	public static  List<User> validate(String name, String code) {
		
           ArrayList<User> cus = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from qa where code='"+code+"' and name='"+name+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				int id = rs.getInt(1);
				String name1 = rs.getString(2);
				String code1 = rs.getString(3);
				String supplier = rs.getString(4);
				String date = rs.getString(5);
				String quantity = rs.getString(6);
				
				User c = new User(id,name1,code1,supplier,date,quantity);
				cus.add(c);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return cus;
	}
	
	
    
    public static boolean insertcustomer(String name, String code, String supplier,  String date,String quantity) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into qa values (0,'"+name+"','"+code+"','"+supplier+"','"+date+"','"+quantity+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    public static boolean updatecustomer(String id,String name, String code, String supplier,  String date,String quantity) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update qa set name='"+name+"',code='"+code+"',supplier='"+supplier+"',date='"+date+"',quantity='"+quantity+"'  "
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
    public static List<User> getCustomerDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<User> cus = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from qa where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name1 = rs.getString(2);
				String code1 = rs.getString(3);
				String supplier = rs.getString(4);
				String date = rs.getString(5);
				String quantity = rs.getString(6);
				
				User c = new User(id,name1,code1,supplier,date,quantity);
				cus.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cus;	
    }
    
    
    public static boolean deleteCustomer(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from qa where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
    
    public static List<User> getAllAdmins() {
	    ArrayList<User> admins = new ArrayList<>();
	    
	    try {
	        // DB CONNECTION
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        
	        String sql = "select * from qa";
	        rs = stmt.executeQuery(sql);
	        
	        while (rs.next()) {
	            int id = rs.getInt(1);
	            String name = rs.getString(2);
				String code = rs.getString(3);
				String supplier = rs.getString(4);
				String date = rs.getString(5);
				String quantity = rs.getString(6);
				
				User a = new User(id,name,code,supplier,date,quantity);
			
	           
	            admins.add(a);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return admins;
	}
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
