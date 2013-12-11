public class Node
{
	private Data value;
	private Dates dateValue;
	private Node next, prev;
	public Node(Data data, Node next, Node prev, Dates date)
	{
		this.value = data;
		this.next = next;
		this.prev = prev;
	}
	public void setValue(Data data)
	{ 
		this.value = data; 
	}
	public void setValueOfDate(Dates data)
	{ 
		this.dateValue = data; 
	}
	public Dates getDateValue() {
		return dateValue;
	}

	public void setNext(Node next)
	{ 
		this.next = next;
	}
	public Node getPrev() {
		return prev;
	}
	public void setPrev(Node prev) {
		this.prev = prev;
	}
	public Data getValue() { return value; }
	public Node getNext() { return next; }
}