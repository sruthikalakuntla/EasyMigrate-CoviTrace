
<%@ page  import="java.sql.*" import="java.io.*" import="com.database.*" %>
<%@ page  import="CT.*" import="java.util.*" import="com.database.*" %>


<%

     String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");

String text=request.getParameter("text");

InsertChatBot.main(text,(String)session.getAttribute("username"));

String text2=text.toLowerCase();

Connection con=Dbconnection.getcon();
Statement st= con.createStatement();
Statement st2= con.createStatement();
ResultSet rs=st.executeQuery("select count(*) from questions");
int tot=0;
if(rs.next()){
tot=rs.getInt(1);
System.out.println("----------"+tot);
}
	

Map<Double, String> hm = new TreeMap<Double, String>(Collections.reverseOrder());

try{



if(text2.contains("migration") && text2.contains("status") ){


String res=GetData.status(username);


InsertChatBot.main("Your Migration Status Details<br>UserId: "+username+" <br> Status: "+res+"","chatbot");


}else{

 rs=st.executeQuery("select * from questions");
while(rs.next()){

	hm.put(StringCompare.similarity(rs.getString("qns"),text,tot),rs.getString(1));

}
System.out.println(hm);
Set set = hm.entrySet();
Iterator i = set.iterator();
i.hasNext();
Map.Entry me = (Map.Entry)i.next();

//pw.println(me.getKey() + ": "+me.getValue());
if((double)me.getKey()>0){
	
ResultSet rs2=st2.executeQuery("select * from ans where sno='"+me.getValue()+"' ");
while(rs2.next()){

	InsertChatBot.main(rs2.getString("ans"),"chatbot");

}
}else{

	InsertChatBot.main(text,(String)session.getAttribute("username"));

	InsertChatBot.main("Sorry, I did not understand..","chatbot");
	
	}


}

















}
catch(Exception e){
System.out.println("Exception Occured");
}
response.sendRedirect("chatbot.jsp");


%>
