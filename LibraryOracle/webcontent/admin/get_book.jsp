<%@page import="java.sql.*" import="com.library.db.dbConnect"%>
<%
	PreparedStatement ps;
		Connection conn = dbConnect.getConnection();
        ResultSet rs= null;
      
%>

<% 
String bookid=request.getParameter("bookid");
if(bookid!=null) 
{

	String sql ="SELECT BookName,id FROM tblbooks WHERE (ISBNNumber=?)";
	ps=conn.prepareStatement(sql,ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	ps.setString(1,bookid);
	rs=ps.executeQuery();
	

	int cnt=1;
	if(rs.next())
	{	
%>
		<option value="<%=rs.getInt("id")%>"><%=rs.getString("BookName")%></option>
		<b>Book Name :</b> 
<%  
		out.println(rs.getString("BookName"));
		 out.println("<script>$('#submit').prop('disabled',false);</script>");
	}
	 else
	{
%>
  
		<option class="others"> Invalid ISBN Number</option>
<%
 	out.println("<script>$('#submit').prop('disabled',true);</script>");
	}
}

%>
