package searchPack;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
@PersistenceCapable
public class SearchForm {
	
	@Persistent
	static int _id=0;
	
	@PrimaryKey
	@Persistent
	public String id;
	
	
	@Persistent
	public String city;
	@Persistent
	public String day;
	@Persistent
	public String month;
	@Persistent
	public String year;
	@Persistent
	public String ballroom;
	
	public SearchForm() {
		super();
		this.id=(_id++) + "";
		this.city = null;
		this.day = null;
		this.month = null;
		this.year = null;
		this.ballroom = null;
		
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getBallroom() {
		return ballroom;
	}
	public void setBallroom(String ballroom) {
		this.ballroom = ballroom;
	}

	
}
