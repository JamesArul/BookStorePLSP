<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link  rel="stylesheet" href="Resources/Bootstrap/bootstrap.min.css">
<script src="Resources/Bootstrap/bootstrap.js"></script>
<script src="Resources/JQuery/jquery-3.1.1.min.js"></script>
<title>Login</title>
</head>
<body>
<jsp:include page="MainHeader.jsp"></jsp:include>
 <div class="container">
 <center>
 <form class="form-horizontal" action="login">
 Enter ID:<input type="text" name="uname" id="uname" placeholder="Enter your unique User ID"><br>
 Enter password:<input type="password" id="upwd" name="upwd" placeholder="Enter your password"><br>
 <input type="submit" value="Login">
 </form>
 </center>
 </div>
<jsp:include page="MainFooter.jsp"></jsp:include>
</body>
</html>