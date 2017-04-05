<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="Resources/Bootstrap/bootstrap.min.css">
<title>Admin : View Category</title>
</head>
<body>
<jsp:include page="..\MainHeader.jsp"></jsp:include>
<center>
<h1>View Category</h1>
<div class="container">
  <h2>Available Category</h2>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Category Id</th>
        <th>Category Name</th>
        <th>Category Description</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${cgList}" var="cList">
      <tr>
        <td><c:out value="${cList.categoryID}" /></td>
        <td><c:out value="${cList.categoryName}" /></td>
        <td><c:out value="${cList.categorydescription}" /></td>
      </tr>
       </c:forEach>
    </tbody>
  </table>
</div>
</center>
</body>
</html>