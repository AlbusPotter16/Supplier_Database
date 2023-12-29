package com.webt;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.Session;


public class Database {
	public boolean insertData(String username,String email,String pass)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");     // register driver class
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "kiet123");
			PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?)");		
			ps.setString(1,username);
			ps.setString(2,email);
			ps.setString(3,pass);
			int i= ps.executeUpdate();
			if(i>0)
			{
				System.out.println("Inserted Succesfully");
				return true;
			}
			con.close();
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return false;}		
	public boolean selectData(String username,String pass)
	{
		try {
	Class.forName("com.mysql.cj.jdbc.Driver");     // register driver class
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "kiet123");
    PreparedStatement ps = con.prepareStatement("select * from register where Username=? and password=? ");		
    ps.setString(1,username);
    ps.setString(2,pass);
    ResultSet rs=ps.executeQuery();
       if(rs.next())
       {
    	   System.out.println("Found Succesfully");
       	return true;
		}
       con.close();
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return false;}	
	public boolean insertProduct(String productId,String productName,String price,String stockQuantity,String category,String manufacturer)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");     // register driver class
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "kiet123");
			PreparedStatement ps = con.prepareStatement("insert into product_master values(?,?,?,?,?,?)");		
			ps.setString(1,productId);
			ps.setString(2,productName);
			ps.setString(3,price);
			ps.setString(4,stockQuantity);
			ps.setString(5,category);
			ps.setString(6,manufacturer);
			int i= ps.executeUpdate();
			if(i>0)
			{
				System.out.println("Inserted Succesfully");
				return true;
			}
			con.close();
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return false;}
}


