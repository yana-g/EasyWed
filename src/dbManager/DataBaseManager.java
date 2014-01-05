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
	
	
	
}