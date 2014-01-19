package uploadPack;

import javax.jdo.annotations.PersistenceCapable;

import usersPack.*;

import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
@PersistenceCapable
public class UploadForm {

	@Persistent
	static int _id=0;
	
	@PrimaryKey
	@Persistent
	public String id;
	
	
	
	
	@Persistent
	public String username;
	
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
	@Persistent
	public String makeUp;
	@Persistent
	public String photographer;
	@Persistent
	public String dj;
	
	@Persistent
	public boolean status;
	
	
	

	public UploadForm() {
		super();
		this.id=(_id++) + "";
		this.username = null;
		this.city = null;
		this.day = null;
		this.month = null;
		this.year = null;
		this.ballroom = null;
		this.makeUp = null;
		this.photographer = null;
		this.dj = null;
		this.status=false;
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
	public String getMakeUp() {
		return makeUp;
	}
	public void setMakeUp(String makeUp) {
		this.makeUp = makeUp;
	}
	public String getPhotographer() {
		return photographer;
	}
	public void setPhotographer(String photographer) {
		this.photographer = photographer;
	}
	public String getDj() {
		return dj;
	}
	public String getId() {
		return id;
	}

	
	public void setId(String id) {
		this.id = id;
	}
	public void setDj(String dj) {
		this.dj = dj;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status= status;
	}
}
