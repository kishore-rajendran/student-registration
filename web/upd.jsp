<%-- 
    Document   : newjsp
    Created on : 1 Nov, 2018, 8:51:15 PM
    Author     : Kishore
--%>

<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page language="java"%>
<%@ page session="true"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.Connection;"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update</title>
    </head>
    <body>
        <%
            try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =DriverManager.getConnection("jdbc:mysql://localhost/db?user=root&password=");
		String values = request.getParameter("values");
                String value = request.getParameter("value");
                String username = request.getParameter("username");
                if(values.equals("username")){
                PreparedStatement a = con.prepareStatement("UPDATE data SET username=? where username=?");
                
                a.setString(1,value);
                a.setString(2,username);
                int r = a.executeUpdate();
		if(r != -1)
			response.sendRedirect("db.jsp");
		else{%>
                <%
                        out.print("Error");
		}}
                if(values.equals("email")){
                PreparedStatement a = con.prepareStatement("UPDATE data SET email=? where username=?");
                
                a.setString(1,value);
                a.setString(2,username);
                int r = a.executeUpdate();
		if(r != -1)
			response.sendRedirect("db.jsp");
		else{%>
                <%
                        out.print("Error");
		}}
                if(values.equals("co")){
                PreparedStatement a = con.prepareStatement("UPDATE data SET co=? where username=?");
                
                a.setString(1,value);
                a.setString(2,username);
                int r = a.executeUpdate();
		if(r != -1)
			response.sendRedirect("db.jsp");
		else{%>
                <%
                        out.print("Error");
		}}
                if(values.equals("phone")){
                PreparedStatement a = con.prepareStatement("UPDATE data SET phone=? where username=?");
                
                a.setString(1,value);
                a.setString(2,username);
                int r = a.executeUpdate();
		if(r != -1)
			response.sendRedirect("db.jsp");
		else{%>
                <%
                        out.print("Error");
		}}
                if(values.equals("password")){
                PreparedStatement a = con.prepareStatement("UPDATE data SET password=? where username=?");
                
                a.setString(1,value);
                a.setString(2,username);
                int r = a.executeUpdate();
		if(r != -1)
			response.sendRedirect("db.jsp");
		else{%>
                <%
                        out.print("Error");
		}}
                if(values.equals("DOB")){
                PreparedStatement a = con.prepareStatement("UPDATE data SET DOB=? where username=?");
                
                a.setString(1,value);
                a.setString(2,username);
                int r = a.executeUpdate();
		if(r != -1)
			response.sendRedirect("db.jsp");
		else{%>
                <%
                        out.print("Error");
		}}
	}catch(Exception ex){
		out.println(ex);
	}
        %>
    </body>
</html>
