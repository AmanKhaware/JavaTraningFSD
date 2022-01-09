<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	
	<%-- This is JSP ccmments using JSP COmment tag--%>
	<%  
	String name=request.getParameter("username");  
	out.print("\n welcome "+name);  
	
	String age=request.getParameter("age");  
	out.print("\n Age :  "+age);  
	
	String city=request.getParameter("city");  
	out.print("\n City : "+city);  
	
	String gender=request.getParameter("gender");  
	out.print("\n Gender : "+gender);  
	
	String email=request.getParameter("email");  
	out.print("\n Email : "+email);  
	%>  
	<br><br><br>
	
	Expression Tag:::: Current Time: <%= java.util.Calendar.getInstance().getTime() %>  
	<br>
	<%= "\n Welcome Back "+ request.getParameter("username") %>  
	<br><br><br>
	
	Declaration Tag::: 
	<%! int data=50; 
		int databal = data*2;
	%>  
    <%= "Value of the variable is:"+ databal %>  
    
    <!-- We are on this Page  -->
    
</body>
</html>