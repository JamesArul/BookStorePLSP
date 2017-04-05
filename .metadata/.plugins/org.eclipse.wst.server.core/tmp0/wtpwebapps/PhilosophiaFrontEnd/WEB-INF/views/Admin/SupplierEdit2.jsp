<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link  rel="stylesheet" src="Resources/Bootstrap/bootstrap.min.css">
<title>Admin : Edit Supplier</title>
<style>
table, th, td {
   border: 1px solid black;
}
</style>
</head>
<body>
<center>
<table>
<tr>
<th>Supplier ID</th>
<th>Supplier Name</th>
<th>Supplier Description</th>
</tr>
      <tr>
        <td><c:out value="${spFound.supplierID}" /></td>
        <td><c:out value="${spFound.supplierName}" /></td>
        <td><c:out value="${spFound.supplieraddress}" /></td>
      </tr>
</table>
<br>
<br>
<form:form action="editSupplier" method="post" modelattribute="Supplier">
Supplier ID:<input type="text" value="${spFound.supplierID}" disabled="disabled">
<input type="hidden" id="spID" name="spID" value="${spFound.supplierID}"><br>
Supplier Name:<form:input path="supplierName"/><br>
Supplier Address:<form:input path="supplieraddress"/><br>
<input type="submit" value="Edit Supplier">
</form:form>
</center>
</body>
</html>