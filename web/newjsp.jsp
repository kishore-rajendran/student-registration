<%-- 
    Document   : newjsp
    Created on : 1 Nov, 2018, 8:51:15 PM
    Author     : Kishore
--%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert</title>
    </head>
    <body>
        <%
            try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =DriverManager.getConnection("jdbc:mysql://localhost/db?user=root&password=");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
                String DOB = request.getParameter("DOB");
                String email = request.getParameter("email");
                String gender = request.getParameter("gender");
                String co = request.getParameter("co");
                String phone = request.getParameter("phone");
                PreparedStatement a = con.prepareStatement("insert into data values(?,?,?,?,?,?,?);");
                a.setString(1,username);
                a.setString(2,password);
                a.setString(3,DOB);
                a.setString(4,email);
                a.setString(5,gender);
                a.setString(6,co);
                a.setString(7,phone);
               
                int r = a.executeUpdate();
		if(r != -1)
			response.sendRedirect("db.jsp");
		else{%>
                <%
                        out.print("Error");
		}
	}catch(Exception ex){
		out.println(ex);
	}
        %>
    </body>
</html>
