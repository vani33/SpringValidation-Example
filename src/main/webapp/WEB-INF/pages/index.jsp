<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>  
<head>  
<style>  
.error{color:red}  
</style>  
</head>  
<body>  
<form:form action="helloagain" modelAttribute="emp">  
EmpNo: <form:input path="empNo"/> <br><br>  
EmpName: <form:input  path="empName"/>    
<form:errors path="empName" cssClass="error"/><br><br> 

Email:<form:input path="email"/> <br><br>
<form:errors path="email" cssClass="error"/><br><br> 
Gender:<form:input path="gender"/> <br><br>
<form:errors path="gender" cssClass="error"/><br><br> 
<input type="submit" value="submit">  
</form:form>  
</body>  
</html>  