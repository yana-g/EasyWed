package msgPack;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import uploadPack.UploadForm;

@PersistenceCapable
public class MsgForm {
	
	@Persistent
	static int _id=0;
	
	@PrimaryKey
	@Persistent
	public String id;
	
	@Persistent
	public String id_form;
	


	//@Persistent
	//public UploadForm upload;
	@Persistent
	public String msg;
	@Persistent
	public String userNameFrom;
	@Persistent
	public String userNameTo;
	@Persistent
	public boolean status;
	
	






	public MsgForm(UploadForm upload, String msg, String userFrom){
		super();
		this.id_form=upload.getId();
		this.status=upload.getStatus();
		this.id=(_id++)+"";/////////////
		this.msg = msg;
		System.out.println(msg.toString());
		this.userNameFrom = userFrom;
		System.out.println("user from "+userNameFrom.toString() );
		this.userNameTo = upload.getUsername();
		System.out.println(" userNameTo "+userNameTo.toString() );
	}





	public void setId(String id) {
		this.id = id;
	}


	public String getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id+"";
	}



//	public UploadForm getUpload() {
//		return upload;
//	}



//	public void setUpload(UploadForm upload) {
//		this.upload = upload;
//	}



	public String getMsg() {
		return msg;
	}



	public void setMsg(String msg) {
		this.msg = msg;
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
	
	public String getId_form() {
		return id_form;
	}



	public void setId_form(String id_form) {
		this.id_form = id_form;
	}
	public boolean getStatus() {
		return status;
	}





	public void setStatus(boolean status) {
		this.status = status;
	}
}
