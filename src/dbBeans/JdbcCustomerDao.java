package dbBeans;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class JdbcCustomerDao implements CustomerDao {
	
	JdbcManager db = new JdbcManager();

	@Override
	public void add(Customer entity) {
		PreparedStatement prepStmt = null;
		int idIn = entity.getCustomer_id();
		String fNameIn = entity.getFirst_name();
		String lNameIn = entity.getLast_name();
		String userNameIn = entity.getUser_name();
		String passwordIn = entity.getPassword();
		int loyaltyIn = entity.getLoyalty_points_customer();
		String insertQuery = "Insert INTO Customer Values(?,?,?,?,?,?)";
		
		try {
			Connection con = db.getConn();
			prepStmt = con.prepareStatement(insertQuery);
			prepStmt.setInt(1, idIn);
			prepStmt.setString(2, fNameIn);
			prepStmt.setString(3, lNameIn);
			prepStmt.setString(4, userNameIn);
			prepStmt.setString(5,passwordIn);
			prepStmt.setInt(6, loyaltyIn);			
			prepStmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("Insert Failed");
		}
		
		try {
			db.closeConn();
		}catch(SQLException e_) {
			System.out.println("close failed");
		}
		
	}
	
	@Override
	public void update(Customer entity) {
		PreparedStatement prepStmt = null;
		int idIn = entity.getCustomer_id();
		String fNameIn = entity.getFirst_name();
		String lNameIn = entity.getLast_name();
		String userNameIn = entity.getUser_name();
		String passwordIn = entity.getPassword();
		int loyaltyIn = entity.getLoyalty_points_customer();
		
		String updateQuery = "Update Customer SET first_name = '"+fNameIn+"' , last_name = '"+lNameIn+"' ,user_name= '"+userNameIn+"' ,password= '"+passwordIn+"' ,loyalty_points_customer= '"+loyaltyIn+"' WHERE customer_id= "+idIn;;
		
		try {
			Connection con = db.getConn();
			prepStmt = con.prepareStatement(updateQuery);
			prepStmt.executeUpdate();			
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Update Failed");
		}
		
		try {
			db.closeConn();
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("Close Failed");
		}
				
	}
	
	public void addloyalty_points_customer(Customer in,Integer pointsIn) {
		PreparedStatement prepStmt =null;
		int updateId = in.getCustomer_id();		
		int newPointsValue = in.getLoyalty_points_customer()+pointsIn;
		String updateQuery = "Update Customer SET loyalty_points_customer ="+newPointsValue+" WHERE customer_id= "+updateId;
		
		try {
			Connection con = db.getConn();
			prepStmt = con.prepareStatement(updateQuery);
			prepStmt.executeUpdate();
			System.out.println("Points updated");
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("Update Failed");
		}		
		try {
			db.closeConn();
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("Close Failed");
		}
	}
	

	@Override
	public void remove(Integer key) {
		PreparedStatement prepStmt = null;
		int idIn = key;
		String removeQuery = "Delete from Customer WHERE customer_id="+idIn;
		
		try {
			Connection con = db.getConn();
			prepStmt = con.prepareStatement(removeQuery);
			prepStmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("Removal Failed");
		}
		try {
			db.closeConn();
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("close failed");
		}
		
	}

	@Override
	public List<Customer> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customer find(Integer key) {
		return null;
	}	
	
	public Customer findByUser(String key) {
		PreparedStatement prepStmt = null;
		String userIn = key;
		String searchQuery = "Select * from Customer WHERE user_name='"+userIn+"'";
		
		try {
			Connection con = db.getConn();
			prepStmt = con.prepareStatement(searchQuery);
			ResultSet rs = prepStmt.executeQuery();
			
			while(rs.next()) {
				int id = rs.getInt("customer_id");
				String fName = rs.getString("first_name");
				String lName = rs.getString("last_name");
				String userName = rs.getString("user_name");
				String password = rs.getString("password");
				int loyalty = rs.getInt("loyalty_points_customer");
				
				Customer customerOut = new Customer(id,fName,lName,userName,password,loyalty);
				return customerOut;
			}
		}catch(SQLException e) {
			System.out.println("Search Failed");
			e.printStackTrace();
			
		}
		try {
			db.closeConn();
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("close failed");
		}
		return null;	
	}
	


}
