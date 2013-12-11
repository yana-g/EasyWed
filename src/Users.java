//import java.util.ArrayList;


public class Users 
{
	protected static int serialNumber=0;
	private Node head, tail;
	private int howMany=0;

	public int getHowMany() {
		return howMany;
	}

	public void setHowMany(int howMany) {
		this.howMany = howMany;
	}

	public Users()
	{
		head=tail=null;
		
	}


	public void addToList(Data user)//add user to list
	{
		Node newNode = new Node(user, null, null,null);
		if(head==null)
		{
			newNode.setValue(user);
			//head.setValue(user);
			newNode.setNext(null);
			newNode.setPrev(null);
			tail=head=newNode;
			howMany++;
			serialNumber++;
		}
		else
		{
			if(!exist(user)){
				newNode.setPrev(tail);
				newNode.setValue(user);
				tail.setNext(newNode);
				tail=newNode;
				howMany++;
				serialNumber++;

			}
			else
				System.out.println("User is already in the list!");
		}
	}


	public boolean exist(Data data) {//check if the user is already listed in the website
		Node curr;
		for(curr=this.head; curr!=null; curr=curr.getNext())
		{
			if(curr.getValue().equals(data))
				return true;
		}

		return false;
	}

	public String toString() {
		Node curr=this.head;
		String str="";
		for(curr=this.head; curr!=null; curr=curr.getNext())
		{
			str+=curr.getValue() +"\n" +getHowMany() +"\n";

		}
		return str;
	}

	public void remove(Data user){
		Node curr=this.head;
		for(curr=this.head; curr!=null; curr=curr.getNext())
		{
			if(curr==this.head){
				head=curr.getNext();
				howMany--;
				break;}
			
			else if(curr.getValue().equals(user)){
				curr.getPrev().setNext(curr.getNext());
				curr.getNext().setPrev(curr.getPrev());
				howMany--;
				break;
			}
		
		}


	}


}
