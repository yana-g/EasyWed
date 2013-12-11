
public class Dates extends Calendar{
	
	protected String dayInMonth;
	protected String Month;
	protected String year;


	public Dates( String d, String m, String y)
	{

		this.dayInMonth=d;
		this.Month=m;
		this.year=y;
	}
	

	
	
	public String getDayInMonth() {
		return dayInMonth;
	}
	public void setDayInMonth(String dayInMonth) {
		this.dayInMonth = dayInMonth;
	}
	public String getMonth() {
		return Month;
	}
	public void setMonth(String month) {
		Month = month;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String toString() {
		
		String str="Day: " + getDayInMonth() +"\n" +
				"Month: " + getMonth() +"\n"+
				"Year: " + getYear()+"\n";
		return str;
	}
	
	
	
}


