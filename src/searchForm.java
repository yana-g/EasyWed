
public class searchForm {//אנחנו צריכות להוסיף תיעוד... 
	final static int MAX =5;
	
	public static void main(String[] args) {
		
		
	/*	professionals pro[] = new professionals[MAX];
		
		
		pro[0] = new professionals("Dani_Hafakot","Dani","photografer","dani@gmail.com","054-8764467","hasadna17","jerusalem","danihafakot.co.il",700);
		pro[0].IsAvailable[15][11]=true;
		pro[1] = new professionals("Haim_Hafakot","Haim","photografer","Haim@gmail.com","054-8760067","hasadna34","Tel-Aviv","Haimhafakot.co.il",1500);
		pro[1].IsAvailable[15][11]=true;
		pro[2] = new professionals("rimonim","Avi","BallRoomManager","Rimonim@gmail.com","054-8964467","dereh-hevron24","jerusalem","rimonim.co.il",20000);
		pro[2].IsAvailable[15][11]=true;
		pro[3] = new professionals("ulamei_sharon","avihai","BallRoomManager","ulamei_sharon@gmail.com","052-1278397","haoman6","rishon_lezion","ulamei_sharon@gmai.com",34000);
		pro[3].IsAvailable[13][7] = true;
		pro[4] = new professionals("amalia_makeup","amalia","make-up-artist","amalia_makeup@gmail.com","052-5278797","rehavia4","ber-sheva","amalia_makeup@gmai.com",500);
		pro[4].IsAvailable[13][7] = false;
		
		// get all the features and ask if they are available
		for(int i=0; i<MAX; i++){
			if( pro[i].profession.equals("photografer") &&pro[i].IsAvailable[15][11]==true){
				System.out.println("the available photographers are:");
				System.out.println(pro[i]);
			}
		}*/
		
		Users list=new Users();
		Calendar cal=new Calendar();
		Dates date=new Dates("8", "10", "2013");
		
		cal.addToList(date);
		System.out.println(cal);
		
		
		Data pr = new Professional(cal, "SarahGirl" ,"Sarah", "Levy", "hh@gmail", "gtre", "054", "DaniEvent", "photographer", "defG", "tlv", "www", 566);
		
		list.addToList(pr);
		
		Data couple = new Couples("SarahGirl1" ,"Sarah1", "Levy1", "hh@gmail", "gtre", "054");
		
		list.addToList(couple);
		//System.out.println(list); 
		
		System.out.println(list);
			
	}
}



