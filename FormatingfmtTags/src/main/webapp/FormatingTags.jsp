<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- fmt:parseNumber tag -->
*********************************************************************************************************************************
<c:set var="Date" value="<%=new java.util.Date()%>" />  <p>  
Today's Date :  
<fmt:formatDate type="date" value="${Date}" />  
</p> 

<center><h3>Marksheet</h3></center>  
<c:set var="Marks" value="87.43" />  
    <fmt:parseNumber var="m1" type="number"  value="${Marks}" />  
    <p><i>Mark 1 :</i>  <c:out value="${m1}" /> Out of 100</p>

<c:set var="Marks" value="67.34" />  
    <fmt:parseNumber var="m2" type="number" integerOnly="true" value="${Marks}" />  
    <p><i>Mark 2 :</i>  <c:out value="${m2}" /> Out of 100</p>

<c:set var="Marks" value="89" />  
    <fmt:parseNumber var="m3" type="number" integerOnly="true" value="${Marks}" />  
    <p><i>Mark 3 :</i>  <c:out value="${m3}" /> Out of 100</p>

<c:set var="Marks" value="90" />  
    <fmt:parseNumber var="m4" type="number" integerOnly="true" value="${Marks}" />  
    <p><i>Mark 4 :</i>  <c:out value="${m4}" /> Out of 100</p>

<c:set var="Marks" value="80.57" />  
    <fmt:parseNumber var="m5" type="number" value="${Marks}" />  
    <p><i>Mark 5 :</i>  <c:out value="${m5}" /> Out of 100</p>

  <c:set var="TotalMarks" value="${m1+m2+m3+m4+m5}"/>
  <h4>Total Marks : <fmt:formatNumber value ="${TotalMarks}" type="number"/></h4>
  <h4>Percentage : <fmt:formatNumber value ="${TotalMarks/500}" type="percent"/></h4>

<br><br>    
    ************************ Semester Fees Paid Througout The Course **********************************************
    
    <c:set var = "semester1" value = "49000" />
    <h5>Fee Paid in Semester 1 : <fmt:formatNumber value="${semester1}" type="currency"/></h5>
    
    <c:set var = "semester2" value = "51000" />
    <h5>Fee Paid in Semester 2 : <fmt:formatNumber value="${semester2}" type="currency"/></h5>
    
    <c:set var = "semester3" value="53000" />
    <h5>Fee Paid in Semester 3 " <fmt:formatNumber value="${semester3}" type="currency"/></h5>
    
    <c:set var = "semester4" value="54000" />
    <h5>Fee Paid in Semester 4 " <fmt:formatNumber value="${semester4}" type="currency"/></h5>
    
    <c:set var = "semester5" value="56000" />
    <h5>Fee Paid in Semester 5 " <fmt:formatNumber value="${semester5}" type="currency"/></h5>
    
    <c:set var = "semester6" value="58000" />
    <h5>Fee Paid in Semester 6 " <fmt:formatNumber value="${semester6}" type="currency"/></h5>



  <c:set var="TotalFees" value="${semester1+semester2+semester3+semester4+semester5+semester6}"/>
  <h4>Total Amount : <fmt:formatNumber value ="${TotalFees}" type="currency"/></h4>
 

<br><br>  
    
</body>
</html>