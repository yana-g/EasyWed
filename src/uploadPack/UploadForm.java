package uploadPack;

import javax.jdo.annotations.PersistenceCapable;
import usersPack.*;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

public class UploadForm {

	@PrimaryKey
	private String username;
	
	@Persistent
	private String city;
	@Persistent
	private String day;
	@Persistent
	private String month;
	@Persistent
	private String year;
	@Persistent
	private String ballroom;
	@Persistent
	private String makeUp;
	@Persistent
	private String photographer;
	@Persistent
	private String dj;
	
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
	public void setDj(String dj) {
		this.dj = dj;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
}
