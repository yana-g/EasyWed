package JUnitTest;

import static org.junit.Assert.*;

import org.junit.Test;
import usersPack.*;

public class Tester {

    User newUser = new User();

	 @Test
     public void addNewUser() //create a new newUser
     {
           
             assertEquals(null, newUser.getFirstName());           
     }
	 
	


}
