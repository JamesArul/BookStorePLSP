<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link  rel="stylesheet" href="Resources/Bootstrap/bootstrap.min.css">
<title>Admin : Edit Category</title>
<style>
table, th, td {
   border: 1px solid black;
}
</style>
</head>
<body>
<center>
<div class="container">
<table class="table table-bordered">
 <thead>
<tr>
<th>Category ID</th>
<th>Category Name</th>
<th>Category Description</th>
</tr>
</thead>
<tbody>
      <tr>
        <td><c:out value="${cgFound.categoryID}" /></td>
        <td><c:out value="${cgFound.categoryName}" /></td>
        <td><c:out value="${cgFound.categorydescription}" /></td>
      </tr>
      </tbody>
</table>
<br>
<br>
<form action="editCategory" method="post">
Category ID:<input type="text" value="${cgFound.categoryID}" disabled="disabled">
<input type="hidden" id="ctID" name="ctID" value="${cgFound.categoryID}"><br>
Category Name:<input type="text" name="ctName"><br>
Category Description:<input type="text" name="ctDesc"/><br>
<input type="submit" value="Edit Category">
</form>
</div>
</center>
</body>
</html>