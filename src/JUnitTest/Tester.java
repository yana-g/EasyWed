package JUnitTest;

import static org.junit.Assert.*;

import org.junit.Test;
import usersPack.*;

public class Tester {

	
	 @Test
     public void addNewUser() //create a new newUser
     {
             //act
             User newUser = new User();
             assertEquals("Sarah", newUser.getFirstName());           
     }
}
