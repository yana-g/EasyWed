
public class Event
{
	protected Couples couple; 
	protected Professional prof[]=new Professional[15];
	protected String Date;
	protected String Address;
	protected String City;
	
	
	public Event(Couples couple, Professional[] prof, String Date, String Address, String City) {
		super();
		this.couple = couple;
		this.prof = prof;
		this.Date = Date;
		this.Address = Address;
		this.City = City;
	}


	public Couples getCouple() {
		return couple;
	}


	public void setCouple(Couples couple) {
		this.couple = couple;
	}


	public Professional[] getProf() {
		return prof;
	}


	public void setProf(Professional[] prof) {
		this.prof = prof;
	}


	public String getDate() {
		return Date;
	}


	public void setDate(String date) {
		Date = date;
	}


	public String getAddress() {
		return Address;
	}


	public void setAddress(String address) {
		Address = address;
	}


	public String getCity() {
		return City;
	}


	public void setCity(String city) {
		City = city;
	}


	
	
}
