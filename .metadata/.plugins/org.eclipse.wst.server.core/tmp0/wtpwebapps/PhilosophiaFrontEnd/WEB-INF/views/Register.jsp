<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link  rel="stylesheet" href="Resources/Bootstrap/bootstrap.min.css">
<script src="Resources/Bootstrap/bootstrap.js"></script>
<script src="Resources/JQuery/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
function validateRegForm()
{
	var x = document.forms["RegForm"]["uId"].value;
    if (x == "") {
        alert("Id must be filled");
        return false;	
    }
    var y = document.forms["RegForm"]["uName"].value;
    if (y == "") {
        alert("Name must be filled");
        return false;	
    }
    var z = document.forms["RegForm"]["uPwd"].value;
    if (z == "") {
        alert("Password must be filled");
        return false;	
    }
    var e = document.forms["RegForm"]["uEmail"].value;
    if (e == "") {
        alert("Password must be filled");
        return false;	
    }
    var c = document.forms["RegForm"]["uContact"].value;
    if (c == "") {
        alert("Password must be filled");
        return false;	
    }
    return true;
}
</script>
</head>
<body>
<jsp:include page="MainHeader.jsp"></jsp:include>
<center><p>Enter the User Details</p>
<form:form name="RegForm" method="post" action="addUser" modelAttribute="User" onsubmit="return validateRegForm()">
<div class="form-group">
<label for="title">Enter ID:</label>
<form:input id="uId" path="userID"/>
</div><br>
<div class="form-group">
<label for="title">Enter your Name:</label>
<form:input id="uName" path="userName"/>
</div><br>
<div class="form-group">
<label for="title">Enter your Email</label>
<form:input id="uEmail" path="userEmail"/>
</div><br>
<div class="form-group">
<label for="title">Password</label>
<form:password id="uPwd" path="userPassword"/>
</div><br>
<div class="form-group">
<label for="title">Contact</label>
<form:input id="uContact" path="userContact"/>
</div><br>
<input type="submit" value="Register">
</form:form>
</center>
<br>
<br>
<br>
<jsp:include page="MainFooter.jsp"></jsp:include>
</body>
</html>