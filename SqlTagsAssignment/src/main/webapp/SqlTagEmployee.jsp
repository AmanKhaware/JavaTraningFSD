<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*, com.mysql.jdbc.Driver"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<head>  
<title>sql:query Tag</title>  
</head>  
<body>  
   
<!-- sql:setDataSource tag -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/EmployeeDetails"  
     user="root"  password="12345"/>  
 
 <%--   Inserting Records one by one  --%>
 <%--
 <!-- sql:update tag to INSERT -->    
<sql:update dataSource="${db}" var="count">  
INSERT INTO employee VALUES (106,'SimpliLearn', 60000);  
</sql:update>  
 --%>
 
<!-- sql:update with sq:param tag to DELETE -->  
<%--   Deleting Records  --%>
<%--
 <c:set var="empid" value="103"/>  
	<sql:update dataSource="${db}" var="count">  
		DELETE FROM employee WHERE empid = ?  
	 <sql:param value="${empid}" />  
</sql:update> 
  
   --%>
   <%--   Updating Records one by one  --%>
  <%--  
  <sql:update dataSource="${db}" var="count">
		UPDATE employee SET empname = 'Sahilanand' WHERE salary > 50000;
</sql:update>
  --%>
  
  <%--   Selecting Details 100 and 104 id  --%>
<!-- sql:query  tag --> 
<sql:query dataSource="${db}" var="rs">  
	SELECT * from employee where empid BETWEEN 100 AND 104;  
</sql:query>  
   
   
    
<table border="2" width="100%">  
<tr>  
<th>Employee ID</th>  
<th>Employee Name</th>  
<th>Salary</th>  
<th>Age</th>  
</tr>  
	<c:forEach var="table" items="${rs.rows}">  
		<tr>  
			<td><c:out value="${table.empid}"/></td>  
			<td><c:out value="${table.empname}"/></td>  
			<td><c:out value="${table.salary}"/></td>  
			<td><c:out value="${table.age}"/></td>  
		</tr>  
	</c:forEach>  
</table>  

</body>  
</html>  