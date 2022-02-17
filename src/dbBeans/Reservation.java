/*
 * Reservation class
 * 
 * Contributors:
 * 				Ricardo Guillen vergara
 * */
package dbBeans;

public class Reservation {
	private long reservation_id; 
	private String checkIn;
	private String checkOut;
	private String roomSize; 
	private String customer_id; 
	private String amenities; 
	private String guests; 
	private int loyalty_points_reservation;
	
	public Reservation(long reservation_id, String checkIn, String checkOut, String roomSize, String customer_id, String amenities, String guests, int loyalty_points_reservation)
	{
		this.reservation_id = reservation_id;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.roomSize = roomSize;
		this.customer_id = customer_id; 
		this.amenities = amenities; 
		this.guests = guests;
		this.loyalty_points_reservation = loyalty_points_reservation;
	}
	
	
	
	public Reservation() {}
	
	public void setReservation_id(long reservation_id) 
	{
		this.reservation_id = reservation_id;
	}
	
	public long getReservation_id()
	{
		return reservation_id;
	}
	
	public void setCheckIn(String checkIn)
	{
		this.checkIn = checkIn;
	}
	
	public String getCheckIn()
	{
		return checkIn; 
	}
	
	public void setCheckOut(String checkOut)
	{
		this.checkOut = checkOut;
	}
	
	public String getCheckOut()
	{
		return checkOut; 
	}
	
	public void setRoomSize(String roomSize) 
	{
		this.roomSize = roomSize;
	}
	
	public String getRoomSize()
	{
		return roomSize; 
	}
	
	public void setCustomer_id(String customer_id) 
	{
		this.customer_id = customer_id;
	}
	
	public String getCustomer_id()
	{
		return customer_id;
	}
	
	public void setAmenities(String amenities)
	{
		this.amenities = amenities;
	}

	public String getAmenities()
	{
		return amenities;
	}
	
	public void setGuests(String guests) 
	{
		this.guests = guests;
	}
	
	public String getGuests()
	{
		return guests;
	}
	
	public void setloyalty_points_reservation(int loyalty_points_reservation)
	{
		this.loyalty_points_reservation = loyalty_points_reservation;
	}
	
	public long getloyalty_points_reservation()
	{
		return loyalty_points_reservation;
	}
	
	@Override
	public String toString() 
	{
		return String.format("Reservation{reservation_id=%s, checkIn=%s, checkOut=%s, roomSize=%s, customer_id=%s, amenities=%s, guests=%s, loyalty_points_reservation=%s}", 
				reservation_id, checkIn, checkOut, roomSize, customer_id, amenities, guests, loyalty_points_reservation);
	}

	public void setamenities(String string) {
		// TODO Auto-generated method stub
		
	}
}
