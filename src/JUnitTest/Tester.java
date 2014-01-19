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
	 
	 @Test
	 public void setNewUSer()
	 {
		 newUser.setFirstName("wed4u");
         assertEquals("wed4u", newUser.getFirstName());           

	 }
	 
	 @Test
	 public void setPasswordNewUser()
	 {
		assertEquals("lol", newUser.getPassword());
	 }
	 
	


}
