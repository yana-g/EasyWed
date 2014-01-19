package dbManager;
import usersPack.*;
import msgPack.*;
import uploadPack.*;
import searchPack.*;

import java.util.List;
import java.util.Vector;

import javax.jdo.PersistenceManager;
import javax.jdo.annotations.Persistent;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
public final class DataBaseManager
{
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	static PersistenceManager pm = PMF.get().getPersistenceManager();
	private DataBaseManager() {}
	private static DataBaseManager instance = null;

	public static DataBaseManager getInstance()
	{
		if (instance == null)
			instance = new DataBaseManager();
		return instance;
	}

	
	public void insertNewMsg(MsgForm s)
	{
		pm.makePersistent(s);
	}
	
	
	public void insertNewOrd(orderObj s)
	{
		pm.makePersistent(s);
	}
	
	
	@SuppressWarnings("unchecked")
	public List<orderObj> getAnsById(String id)
	{
		List<orderObj> l;
		javax.jdo.Query q = pm.newQuery(orderObj.class);
		
		q.setFilter("id==theID");/////
		
		q.declareParameters("String theID");
		return (List<orderObj>)q.execute(id);
	}

	@SuppressWarnings("unchecked")
	public List<MsgForm> getMsgByName(String name)
	{
		List<MsgForm> l;
		javax.jdo.Query q = pm.newQuery(MsgForm.class);
		
		q.setFilter("userNameTo==name");/////
		
		q.declareParameters("String name");
		return (List<MsgForm>)q.execute(name);
	}
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<orderObj> getOrderByName(String name)
	{
		List<orderObj> l;
		javax.jdo.Query q = pm.newQuery(orderObj.class);
		
		q.setFilter("userNameTo==name");///////////////////////
		
		q.declareParameters("String name");
		return (List<orderObj>)q.execute(name);
	}
	
	
	@SuppressWarnings("unchecked")
	public List<MsgForm> getMsgById(String id)
	{
		javax.jdo.Query q = pm.newQuery(MsgForm.class);
		q.setFilter("id==theID");/////
		q.declareParameters("String theID");
		return (List<MsgForm>)q.execute(id);
	}
	
	public void insertNewUser(User s)
	{
		pm.makePersistent(s);
	}

	@SuppressWarnings("unchecked")
	public List<User> getUserByName(String name)
	{
		javax.jdo.Query q = pm.newQuery(User.class);
		q.setFilter("UserName==name");
		q.declareParameters("String name");
		return (List<User>)q.execute(name);
	}

	@SuppressWarnings("unchecked")
	public List<User> getUser()
	{
		javax.jdo.Query q = pm.newQuery(User.class);
		return (List<User>)q.execute();
	}


	@SuppressWarnings("unchecked")
	public boolean checkUser(String UserNameToCheck, String password) 
	{
		javax.jdo.Query q = pm.newQuery(User.class);
		q.setFilter("UserName==UserNameToCheck");
		q.declareParameters("String UserNameToCheck");
		List<User> list;
		list = (List<User>)q.execute(UserNameToCheck);

		if(!list.isEmpty()) {
			User u = list.get(0);

			if(password.equals(u.getPassword())) {	//password ok
				return true;
			} 
		}

		return false;		
	}

	public void insertNewPro(UserProfessionnal p)
	{
		pm.makePersistent(p);
	}

	@SuppressWarnings("unchecked")
	public List<UserProfessionnal> getUserByPName(String name)
	{
		javax.jdo.Query q = pm.newQuery(UserProfessionnal.class);
		q.setFilter("userName==name");
		q.declareParameters("String name");
		return (List<UserProfessionnal>)q.execute(name);
	}

	@SuppressWarnings("unchecked")
	public List<UserProfessionnal> getUserPro()
	{
		javax.jdo.Query q = pm.newQuery(UserProfessionnal.class);
		return (List<UserProfessionnal>)q.execute();
	}

	
	@SuppressWarnings("unchecked")
	public boolean checkPro(String ProNameToCheck, String password) 
	{
		javax.jdo.Query q = pm.newQuery(UserProfessionnal.class);
		q.setFilter("userName==ProNameToCheck");
		q.declareParameters("String UserNameToCheck");
		List<UserProfessionnal> list;
		list = (List<UserProfessionnal>)q.execute(ProNameToCheck);

		if(!list.isEmpty()) {
			UserProfessionnal p = list.get(0);

			if(password.equals(p.getPassword())) {	//password ok
				return true;
			} 
		}

		return false;		
	}

	public void insertNewUpload(UploadForm s)
	{
		pm.makePersistent(s);
	}

	public List<UploadForm> getEventByName(String name)
	{
		javax.jdo.Query q = pm.newQuery(UploadForm.class);
		q.setFilter("username==theName");
		q.declareParameters("String theName");
		//System.out.println("123");
		return (List<UploadForm>)q.execute(name);

	}
	public List<UploadForm> getEventByID(String id)
	{
		javax.jdo.Query q = pm.newQuery(UploadForm.class);
		q.setFilter("id==theID");
		q.declareParameters("String theID");
		//System.out.println("123");
		return (List<UploadForm>)q.execute(id);

	}
	
	
	

	@SuppressWarnings("unchecked")
	public List<UploadForm> getEvent()
	{
		javax.jdo.Query q = pm.newQuery(UploadForm.class);
		return (List<UploadForm>)q.execute();
	}


	public void insertSearch(SearchForm s)
	{
		pm.makePersistent(s);
	}
	
	public List<SearchForm> getSearchById(String id)
	{
		javax.jdo.Query q = pm.newQuery(SearchForm.class);
		q.setFilter("id==theId");
		q.declareParameters("String theId");
		return (List<SearchForm>)q.execute(id);

	}
	
	public List<UploadForm> getEvent(SearchForm sf)
	{
		String parameters="";
		Vector<String> vec=new Vector<String>();
		javax.jdo.Query q = pm.newQuery(UploadForm.class);
		
		if(sf.city!=null){
			vec.add(sf.city);
			q.setFilter("city==TheCity");
			if(parameters.equals(""))
				parameters+="String TheCity";
			else
				parameters+="String TheCity";
		}
		if(sf.day!=null){
			vec.add(sf.day);
			q.setFilter("day==TheDay");
			if(parameters.equals(""))
				parameters+="String TheDay";
			else
				parameters+=", String TheDay";
		}
		if(sf.month!=null){
			vec.add(sf.month);
			q.setFilter("month==TheMonth");
			if(parameters.equals(""))
				parameters+="String TheMonth";
			else
				parameters+=", String TheMonth";
		}
		if(sf.year!=null){
			vec.add(sf.year);
			q.setFilter("year==TheYear");
			if(parameters.equals(""))
				parameters+="String TheYear";
			else
				parameters+=", String TheYear";
		}
		if(sf.ballroom!=null){
			vec.add(sf.ballroom);
			q.setFilter("ballroom==TheBallroom");
			if(parameters.equals(""))
				parameters+="String TheBallroom";
			else
				parameters+=", String TheBallroom";
		}
	
		System.out.println(parameters);
		q.declareParameters(parameters);
		String []array=new String[vec.size()];
		for(int i=0;i<vec.size();i++){
			array[i]=vec.get(i);
			System.out.println(array[i]);
		}
		return (List<UploadForm>)q.executeWithArray(array);
	}
	
	
	@SuppressWarnings("unchecked")
	public void deleteUpload(String id) 
	{
		javax.jdo.Query q = pm.newQuery(UploadForm.class);
		q.setFilter("id==theID");
		q.declareParameters("String theID");
		List<UploadForm> list=(List<UploadForm>)q.execute(id);
		pm.deletePersistent(list.get(0));
    }
	
	@SuppressWarnings("unchecked")
	public void deleteMsgByFormID(String id) 
	{
		javax.jdo.Query q = pm.newQuery(MsgForm.class);
		q.setFilter("id_form==theID");
		q.declareParameters("String theID");
		List<MsgForm> list=(List<MsgForm>)q.execute(id);
		if(list==null || list.size()==0)
			return;
		for(MsgForm item: list)
			pm.deletePersistent(item);
    }
	
	public void deleteOrderByFormID(String id) 
	{
		javax.jdo.Query q = pm.newQuery(MsgForm.class);
		javax.jdo.Query qtmp;
		q.setFilter("id_form==theID");
		q.declareParameters("String theID");
		List<MsgForm> list=(List<MsgForm>)q.execute(id);
		List<orderObj> orderList;
		if(list==null || list.size()==0)
			return;
		for(MsgForm msg: list){
			qtmp= pm.newQuery(orderObj.class);
			qtmp.setFilter("id_m==theMsgID");
			qtmp.declareParameters("String theMsgID");
			orderList=(List<orderObj>)qtmp.execute(msg.getId());
			if(orderList==null || orderList.size()==0)
				return;
			pm.deletePersistent(orderList.get(0));
		}
    }
		
	
	
}