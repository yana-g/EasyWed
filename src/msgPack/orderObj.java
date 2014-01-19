package msgPack;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
@PersistenceCapable
public class orderObj {

	
	@Persistent
	static int _id=0;
	
	@PrimaryKey
	@Persistent
	public String id;
	
	@Persistent
	public String id_m;
	
	@Persistent
	public boolean status; 
	
	
	@Persistent
	public String userNameFrom;
	@Persistent
	public String userNameTo;
	
	public orderObj(MsgForm other){
		super();
		this.status=other.status;
		this.id_m=other.id;
		this.id=other.id;
		//this.id=(_id++)+"";
		this.userNameFrom = other.getUserNameTo().toString();
		System.out.println("user from "+userNameFrom.toString() );
		this.userNameTo = other.userNameFrom.toString();
		System.out.println(" userNameTo "+userNameTo.toString() );
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}


	public String getUserNameFrom() {
		return userNameFrom;
	}

	public void setUserNameFrom(String userNameFrom) {
		this.userNameFrom = userNameFrom;
	}

	public String getUserNameTo() {
		return userNameTo;
	}

	public void setUserNameTo(String userNameTo) {
		this.userNameTo = userNameTo;
	}
	public String getId_m() {
		return id_m;
	}

	public void setId_m(String id) {
		this.id_m = id;
	}
	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}