
public class Calendar {

	private Node head, tail;


	public Calendar() {
		head=tail=null;
		}

	

	public void addToList(Dates date)//add user to list
	{
		Node newNode = new Node(null, null, null, date);
		if(head==null)
		{
			newNode.setValueOfDate(date);
			//head.setValue(user);
			newNode.setNext(null);
			newNode.setPrev(null);
			tail=head=newNode;
		
		}
		else
		{
			//if(!exist(user)){
				newNode.setPrev(tail);
				newNode.setValueOfDate(date);
				tail.setNext(newNode);
				tail=newNode;
				

			//}
			
		}
	}


	public String toString() {
		Node curr=this.head;
		String str="";
		for(curr=this.head; curr!=null; curr=curr.getNext())
		{
			str+=curr.getDateValue() +"\n";

		}
		return str;
	}

	public void remove(Data user){
		Node curr=this.head;
		for(curr=this.head; curr!=null; curr=curr.getNext())
		{
			if(curr==this.head){
				head=curr.getNext();
				
				break;}

			else if(curr.getValue().equals(user)){
				curr.getPrev().setNext(curr.getNext());
				curr.getNext().setPrev(curr.getPrev());
				
				break;
			}

		}


	}




}
