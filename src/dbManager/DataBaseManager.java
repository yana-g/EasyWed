package dbManager;
import usersPack.*;

import java.util.List;

import javax.jdo.PersistenceManager;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
public final class DataBaseManager
{
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	PersistenceManager pm = PMF.get().getPersistenceManager();
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
	
	public List<User> getUserData(String name)
    {
    	System.out.println("getting user " + name);
    	javax.jdo.Query q = pm.newQuery(User.class);
    	q.setFilter("name==UserName");
    	q.declareParameters("String UserName");
    	return (List<User>)q.execute(name);
    }
	
    public List<User> getUser()
    {
    	javax.jdo.Query q = pm.newQuery(User.class);
    	return (List<User>)q.execute();
    }


	public boolean checkUser(String UserName, String password) 
	{
		javax.jdo.Query q = pm.newQuery(User.class);
		q.setFilter("name==UserName");
		q.declareParameters("String UserName");
		List<User> list;
		list = (List<User>)q.execute(UserName);

		if(list != null) {
			User u = list.get(0);

			if(password.equals(u.getPassword())) {	//password ok
				return true;
			} 
		}

		return false;		
	}
	
	
	
}