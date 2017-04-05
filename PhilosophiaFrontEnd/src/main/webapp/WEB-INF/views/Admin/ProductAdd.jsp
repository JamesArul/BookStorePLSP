<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="Resources/Bootstrap/bootstrap.min.css">
<title>Admin : Product Add</title>
</head>
<body>
<center><p>Enter the Product Details</p>
<form:form method="post" action="addProduct" modelattribute="Product" enctype="multipart/form-data">
<div class="form-group">
<label for="title">Product ID:</label>
<form:input path="productID"/>
</div><br>
<div class="form-group">
<label for="title">Product Name:</label>
<form:input path="productName"/>
</div><br>
<div class="form-group">
<label for="title">Product Description:</label>
<form:input path="productDesc"/>
</div><br>
<div class="form-group">
<label for="title">Supplier ID:</label>
<form:input path="supplierID"/>
</div><br>
<div class="form-group">
<label for="title">Category ID:</label>
<form:input path="categoryID"/>
</div><br>
<div class="form-group">
<label for="title">Product Quantity:</label>
<form:input path="productQty"/><br>
</div><br>
<div class="form-group">
<label for="title">Product Cost:</label>
<form:input path="productCost"/><br>
</div><br>
<div class="form-group">
<label for="title">Product Image path:</label>
<form:input type="file" path="productImage"/><br>
</div>
<input type="submit" value="Add Product">
</form:form>
</center>
</body>
</html>