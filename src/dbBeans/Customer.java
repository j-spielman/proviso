package dbBeans;

public class Customer {
	
	private int customer_id;
	private String first_name;
	private String last_name;
	private String user_name;
	private String password;
	private int loyalty_points_customer;
	
	public Customer(int customer_id, String first_name, String last_name, String user_name, String password,
			int loyalty_points_customer) {
		super();
		this.customer_id = customer_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.user_name = user_name;
		this.password = password;
		this.loyalty_points_customer = loyalty_points_customer;
	}

	public int getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getLoyalty_points_customer() {
		return loyalty_points_customer;
	}

	public void setLoyalty_points_customer(int loyalty_points_customer) {
		this.loyalty_points_customer = loyalty_points_customer;
	}
	
	@Override
	public String toString() {
		return "Customer [customer_id= "+customer_id+" first_name= "+first_name+" last_name= "+last_name+" user_name= "+user_name+" password= "+password+" loyalty_points_customer= "+loyalty_points_customer+"]";
	}
	

}
