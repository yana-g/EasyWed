
public class Professional extends Data
{
	//persistence...
	protected String BusinessName;
	protected String Type;
	protected String Address;
	protected String City;
	protected String WebSite;
	protected Calendar cal;
	//boolean IsAvailable[][]=new boolean[31][12];
	protected int price;// business 
	
	//Data profData  =new Data()
	public Professional(Calendar cal,String UN,String FN, String LN, String mail, String pwd, String phone, String BuissnesName, String profession ,String address, String city,String WebSite,int price){
		super(UN, FN,  LN,  mail,  pwd,  phone);
		this.cal=cal;
		this.BusinessName=BuissnesName;
		this.Type = profession;
		this.Address =  address;
		this.City = city;
		this.WebSite = WebSite;
		this.price = price;
		//this.serialNumber++;
		
	}

	public String getBuissnesName() {
		return BusinessName;
	}

	public void setBuissnesName(String buissnesName) {
		BusinessName = buissnesName;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
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

	public String getWebSite() {
		return WebSite;
	}

	public void setWebSite(String webSite) {
		WebSite = webSite;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	public String toString()
	{
			return "Professionals: "+"\n" +"\n"+ super.toString()+ "Business Name: " + getBuissnesName() +"\n" +
				"Profession: " + getType()+"\n" +
				"Address: "+ getAddress() +"\n" +
				"City: " + getCity() +"\n" +
				"WebSite: " + getWebSite()+ "\n"  +
				"Price: " + getPrice() +"\n";
			
		
	}

}
