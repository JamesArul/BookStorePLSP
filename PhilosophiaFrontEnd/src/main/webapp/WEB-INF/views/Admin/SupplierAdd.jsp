<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="Resources/Bootstrap/bootstrap.min.css">
<title>Admin : Supplier Add</title>
</head>
<body>
<center><p>Enter the Supplier Details</p>
<form:form method="post" action="addSupplier" modelattribute="Supplier">
<div class="form-group">
<label for="title">Supplier ID:</label>
<form:input path="supplierID"/>
</div><br>
<div class="form-group">
<label for="title">Supplier Name:</label>
<form:input path="supplierName"/>
</div><br>
<div class="form-group">
<label for="title">Supplier Address:</label>
<form:input path="supplieraddress"/>
</div><br>
<input type="submit" value="Add Supplier">
</form:form>
</center>
</body>
</html>