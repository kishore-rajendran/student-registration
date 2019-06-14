<%-- 
    Document   : db.jsp
    Created on : 1 Nov, 2018, 4:18:02 PM
    Author     : Kishore
--%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
<head>
<title>Database</title>
</head>
<body>
<sql:setDataSource var = "dbase" driver = "com.mysql.jdbc.Driver"
url = "jdbc:mysql://localhost/db"
user = "root" password = ""/>
<sql:query dataSource = "${dbase}" var = "result">
SELECT * from data;
</sql:query>
<table border = "1" width = "100%">
<tr>
<th>username</th>
<th>password</th>
<th>DOB</th>
<th>email</th>
<th>gender</th>
<th>career options</th>
<th>phone</th>
</tr>
<c:forEach var = "row" items = "${result.rows}">
<tr>
<td><c:out value = "${row.username}"/></td>
<td><c:out value = "${row.password}"/></td>
<td><c:out value = "${row.DOB}"/></td>
<td><c:out value = "${row.email}"/></td>
<td><c:out value = "${row.gender}"/></td>
<td><c:out value = "${row.co}"/></td>
<td><c:out value = "${row.phone}"/></td>
</tr>
</c:forEach>
<br><br>
<a href="index.html"><label>home</label></a>
</table>
</body>
</html>

