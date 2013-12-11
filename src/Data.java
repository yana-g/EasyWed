import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

/////////////////////////////////////////////////////////////////////////////////

@PersistenceCapable
public class Data extends Users 
{

	@PrimaryKey
	protected String UserName;
	
	//save everything else
	@Persistent
	protected String FirstName;
	@Persistent
	protected String LastName;
	@Persistent
	protected String mail;
	@Persistent
	protected String password;
	@Persistent
	protected String phone;

	public Data( String UN,String FN, String LN, String mail, String pwd, String phone)
	{
		this.UserName=UN;
		this.FirstName = FN;
		this.LastName = LN;
		this.mail = mail;
		this.password = pwd;
		this.phone = phone;
	}
	

	public String getFirstName()
	{
		return FirstName;
	}
	public void setFirstName(String firstName) 
	{
		FirstName = firstName;
	}
	public String getLastName() 
	{
		return LastName;
	}
	public void setLastName(String lastName)
	{
		LastName = lastName;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	public String toString() {
				
		String str=	"User-Name: " + getUserName() +"\n"+
				"First-Name: " + getFirstName()+"\n" +
				"Last-Name: "+ getLastName() +"\n" +
				"E-mail: " + getMail() +"\n" +
				"**password**: " + getPassword()+ "\n"  +
				"Phone: " + getPhone() +"\n";
		return str;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	
	
}
