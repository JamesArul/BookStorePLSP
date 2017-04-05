<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="Resources/Bootstrap/bootstrap.min.css">
<script src="Resources/Bootstrap/bootstrap.js"></script>
<script src="Resources/JQuery/jquery-3.1.1.min.js"></script>
<title>Products</title>
</head>
<body>
<jsp:include page="MainHeader.jsp"></jsp:include>

<center>
<h1>View Books</h1>
<c:if test="${ not empty loginMsg }"> 
<div class="container">
  <h2>Available Books</h2>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Product Description</th>
        <th>Supplier Id</th>
        <th>Category Id</th>
        <th>Product Quantity</th>
        <th>Book Cost</th>
        <th>Book Cover</th>
     
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${prList}" var="pList">
      <tr>
        <td><c:out value="${pList.productID}" /></td>
        <td><c:out value="${pList.productName}" /></td>
        <td><c:out value="${pList.productDesc}" /></td>
        <td><c:out value="${pList.supplierID}" /></td>
        <td><c:out value="${pList.categoryID}" /></td>
        <td><c:out value="${pList.productQty}" /></td>
        <td><c:out value="${pList.productCost}" /></td>
        <td><img src="${path}${pList.productID}.jpg" height="50" width="50"></td>
      
      </tr>
       </c:forEach>
    </tbody>
  </table>
</div>
</c:if>

<c:if test="${ not empty UserMsg }"> 
 <div class="container">
  <h2>Available Books</h2>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Product Description</th>
        <th>Supplier Id</th>
        <th>Category Id</th>
        <th>Product Quantity</th>
        <th>Book Cost</th>
        <th>Book Cover</th>
        <th>Buy</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${prList}" var="pList">
      <tr>
        <td><c:out value="${pList.productID}" /></td>
        <td><c:out value="${pList.productName}" /></td>
        <td><c:out value="${pList.productDesc}" /></td>
        <td><c:out value="${pList.supplierID}" /></td>
        <td><c:out value="${pList.categoryID}" /></td>
        <td><c:out value="${pList.productQty}" /></td>
        <td><c:out value="${pList.productCost}" /></td>
        <td><img src="${path}${pList.productID}.jpg" height="50" width="50"></td>
        <td>
         <form action="addProductToCart"> 
        <input type="hidden" id="prID" name="prID" value="${pList.productID}"><br>
       <!--  <input type="text" id="prQty" name="prQty">  -->
        <input type="submit" value="Add to Cart"> 
        </form>
        </td>
      </tr>
       </c:forEach>
    </tbody>
  </table>
 </div>
 </c:if>
</center>
</body>
</html>