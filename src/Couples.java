
public class Couples extends Data
{
	
	public Couples( String UN,String FN, String LN, String mail, String pwd, String phone){
		super(UN, FN,  LN,  mail,  pwd,  phone);	
		//this.serialNumber++;
	}

	
	public String toString()
	{
			return "Couples: " +"\n"+super.toString();	
			
		
	}

}
