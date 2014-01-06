package dbManager;
import usersPack.*;

import java.util.List;

import javax.jdo.PersistenceManager;

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

	
	public void insertNewUser(User s)
	{
		pm.makePersistent(s);
	}
	
	
	@SuppressWarnings("unchecked")
	public List<User> getUserByName(String name)
    {
    	System.out.println("getting user " + name);
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
    	System.out.println("getting user " + name);
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
	
	
	
	
}