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
<form:form class="form-horizontal" name="RegForm" method="post" action="addUser" modelattribute="user" onsubmit="return validateRegForm()">
<div class="form-group">
<label class="control-label col-sm-2" for="uId">Enter ID:</label>
<div class="col-sm-10">
<form:input class="form-control" id="uId" path="userID"/><form:errors  path="userID" />
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2" for="uName">Enter your Name:</label>
<div class="col-sm-10">
<form:input class="form-control" id="uName" path="userName"/><form:errors  path="userName" />
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2" for="uEmail">Enter your Email</label>
<div class="col-sm-10">
<form:input class="form-control" id="uEmail" path="userEmail"/><form:errors  path="userEmail" />
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2" for="uPwd">Password</label>
<div class="col-sm-10">
<form:password class="form-control" id="uPwd" path="userPassword"/><form:errors  path="userPassword" />
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2" for="uContact">Contact</label>
<div class="col-sm-10">
<form:input class="form-control" id="uContact" path="userContact"/><form:errors  path="userContact" />
</div>
</div>
<input type="submit" value="Register">
</form:form>
</center>
<br>
<br>
<br>
<jsp:include page="MainFooter.jsp"></jsp:include>
</body>
</html>