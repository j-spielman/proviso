package dbBeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import dbBeans.Reservation;
import dbBeans.JdbcManager;
import dbBeans.ReservationDao;

public class JdbcReservationDao implements ReservationDao {

	JdbcManager db; 
	
	public JdbcReservationDao() 
	{
		// constructor
		db = new JdbcManager(); 
	}
	@Override
	public void add(Reservation Entity) {}
	
	
	public long addReturnId(Reservation entity) // create
	{
		Connection con = null;
		try {
			con = db.getConn();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		Reservation newReservation = entity; 
		
		if (con != null) 
		{
			Statement s;
			try 
			{
				s = con.createStatement(); 	
				
				long customer_id = 1;
				
				String sql = String.format("INSERT INTO reservation(checkIn, checkOut, roomSize, customer_id, amenities, guests, loyalty_points_reservation)" +
						" values('%s', '%s', '%s', %s, '%s', '%s', %s);", 
						newReservation.getCheckIn(), newReservation.getCheckOut(),  						
						newReservation.getRoomSize(), customer_id, 
						newReservation.getAmenities(), newReservation.getGuests(), 
						newReservation.getloyalty_points_reservation());
				
				System.out.println(sql);
				
				s.executeUpdate(sql);
				long reservation_id = 0;
				
				Statement selectStatement = con.createStatement();
				
				ResultSet rs = selectStatement.executeQuery("SELECT MAX(reservation_id) FROM reservation;");
				rs.next();
				reservation_id = rs.getLong(1);
				System.out.println("Created reservation " + reservation_id);				
				s.close();
				return reservation_id;
			}
			catch (SQLException ex)
			{
				System.out.println("Sorry, we are unable to insert new reservation: " + newReservation.toString()); 
				System.out.println(ex.getMessage());
			}
		}		
		return 0;
	}

	@Override
	public List<Reservation> list() 
	{
		Connection con = null;
		try {
			con = db.getConn();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		ArrayList<Reservation> reservations = new ArrayList<Reservation>();
		
		if (con != null) 
		{
			try 
			{
				Statement s = con.createStatement();
				
				String sql = "select reservation_id, roomSize, customer_id, amenities, guests, loyalty_points_reservation, checkIn, checkOut from reservation";
				
				System.out.println(sql);
				
				try 
				{
					ResultSet rs = s.executeQuery(sql);
					
					try 
					{
						while (rs.next()) 
						{
							Reservation reservation = new Reservation();
							reservation.setReservation_id(rs.getLong(1));
							reservation.setCheckIn(rs.getString(2));
							reservation.setCheckOut(rs.getString(3));
							reservation.setRoomSize(rs.getString(4));
							reservation.setCustomer_id(rs.getString(5));
							reservation.setamenities(rs.getString(6));
							reservation.setGuests(rs.getString(7));
							reservation.setloyalty_points_reservation(rs.getInt(8));
							reservations.add(reservation);
						}
					}
					finally { rs.close(); }
				}
				finally { s.close(); }
			}
			catch (SQLException ex)
			{
				System.out.println("Sorry, we could not get reservations: " + ex.getMessage()); 
			}
			finally
			{
				try {
					db.closeConn(con);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return reservations;
	}
	

	
	@Override
	public Reservation find(Long key) 
	{
<<<<<<< HEAD
		
		Connection con = db.getConn();
		
=======
		Connection con = null;
		try {
			con = db.getConn();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
>>>>>>> f5d118e85ac86ffe1bbdfa70067b0323dc1fb665
		
		Reservation reservation = null; 
		
		if (con != null) 
		{
			try 
			{
				Statement s = con.createStatement(); 
				
				String sql = "select reservation_id, checkIn, checkOut, roomSize, customer_id, amenities, guests, loyalty_points_reservation, checkIn, checkOut from reservation where reservation_id = " + key;
				
				System.out.println(sql);
				
				try 
				{
					ResultSet rs = s.executeQuery(sql);
					
					try 
					{
						if (rs.next()) 
						{
							reservation = new Reservation(rs.getLong(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8)); 
						}
					}
					finally { rs.close(); }
				}
				finally { s.close(); }
				
			}
			catch (SQLException ex)
			{
				System.out.println("Sorry, we could not get reservation: " + ex.getMessage());
			}
		}
		
		return reservation;		
		
	}

	@Override
	public void update(Reservation entity) {
		Connection con = null;
		try {
			con = db.getConn();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
		Reservation updatedReservation = entity; 
		
		if (con != null) 
		{
			try {
				Statement s = con.createStatement(); 
				
				String sql = String.format("UPDATE reservation SET reservation_id = '%s', checkIn = %s, checkOut = %s, roomSize = %s, customer_id = '%s', amenities = '%s', guests = %s WHERE loyalty_points_reservation = %s;", 
						updatedReservation.getReservation_id(), updatedReservation.getCheckIn(), updatedReservation.getCheckOut(), updatedReservation.getRoomSize(), updatedReservation.getCustomer_id(), updatedReservation.getAmenities(), updatedReservation.getGuests(), updatedReservation.getloyalty_points_reservation());
				
				System.out.println(sql);
				
				try {
					s.executeUpdate(sql);
				} finally { s.close(); }
			}
			catch (SQLException ex) {
				System.out.println("Our Apologies, the reservation was not updated: " + updatedReservation.toString());
				System.out.println(ex.getMessage());
			}
		}
	}

	@Override
	public void remove(Long key) {
		Connection con = null;
		try {
			con = db.getConn();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		if (con != null) 
		{	
			try 
			{	
				Statement s = con.createStatement(); 
				
				String sql = String.format("DELETE FROM reservation WHERE reservation_id = %s", key);
				
				System.out.println(sql);
				
				try 
				{
					s.executeUpdate(sql);
				} 
				finally { s.close(); }
			} 
			catch (SQLException ex) 
			{
				System.out.println("Sorry we could not delete reservation: " + key);
				System.out.println(ex.getMessage());
			}
		}
	}
}
