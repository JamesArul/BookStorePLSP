<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link  rel="stylesheet" src="Resources/Bootstrap/bootstrap.min.css">
<title>Admin : Edit Product</title>
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
<th>Product ID</th>
<th>Product Name</th>
<th>Product Description</th>
<th>Supplier ID</th>
<th>Category Id</th>
<th>Product Quantity</th>
<th>Product Cost</th>
</tr>
      <tr>
        <td><c:out value="${prFound.productID}" /></td>
        <td><c:out value="${prFound.productName}" /></td>
        <td><c:out value="${prFound.productDesc}" /></td>
        <td><c:out value="${prFound.supplierID}" /></td>
        <td><c:out value="${prFound.categoryID}" /></td>
        <td><c:out value="${prFound.productQty}" /></td>
        <td><c:out value="${prFound.productCost}" /></td>
      </tr>
</table>
<br>
<br>
<form:form action="editProduct" method="post" modelattribute="Product">
Product ID:<input type="text" value="${prFound.productID}" disabled="disabled">
<input type="hidden" id="prID" name="prID" value="${prFound.productID}"><br>
Product Name:<form:input path="productName"/><br>
Product Description:<form:input path="productDesc"/><br>
Supplier ID:<form:input path="supplierID"/><br>
Category ID:<form:input path="categoryID"/><br>
Product Quantity:<form:input path="productQty"/><br>
Product Cost:<form:input path="productCost"/><br>
<input type="submit" value="Edit Product">
</form:form>
</center>
</body>
</html>