<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link  rel="stylesheet" href="Resources/Bootstrap/bootstrap.min.css">
<script src="Resources/Bootstrap/bootstrap.js"></script>
<script src="Resources/JQuery/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
function pFunc()
{
	var pform_value=document.getElementById('sel1').value;
	if(pform_value=="ProductAdd")
	{
	window.location="selProductAdd";
	}
	if(pform_value=="ProductEdit")
	{
	window.location="selProductEdit";
	}
	if(pform_value=="ProductDelete")
	{
	window.location="selProductDelete";
	}
	if(pform_value=="ProductView")
	{
	window.location="selProductView";
	}	
}
function cFunc()
{
	var cform_value=document.getElementById('sel2').value;
	if(cform_value=="CategoryAdd")
	{
	window.location="selCategoryAdd";
	}
	if(cform_value=="CategoryEdit")
	{
	window.location="selCategoryEdit";
	}
	if(cform_value=="CategoryDelete")
	{
	window.location="selCategoryDelete";
	}
	if(cform_value=="CategoryView")
	{
	window.location="selCategoryView";
	}
}
function sFunc()
{
	var sform_value=document.getElementById('sel3').value;
	if(sform_value=="SupplierAdd")
	{
	window.location="selSupplierAdd";
	}
	if(sform_value=="SupplierEdit")
	{
	window.location="selSupplierEdit";
	}
	if(sform_value=="SupplierDelete")
	{
	window.location="selSupplierDelete";
	}
	if(sform_value=="SupplierView")
	{
	window.location="selSupplierView";
	}	
}
</script>
</head>
<body>
<jsp:include page="..\MainHeader.jsp"></jsp:include>
<div class="container">        
  <table class="table">
    <thead>
      <tr>
        <th>Product</th>
        <th>Category</th>
        <th>Supplier</th>
      </tr>
    </thead>
    <div class="form-group">
    <tbody>
      <tr>
        <td>
      <select class="form-control" id="sel1" onchange="pFunc()">
      	<option>--Select--</option>
        <option value="ProductAdd">Add</option>
        <option value="ProductEdit">Edit</option>
        <option value="ProductDelete">Delete</option>
        <option value="ProductView">View</option>
      </select>
        </td>
        <td>
      <select class="form-control" id="sel2" onchange="cFunc()">
      <option>--Select--</option>
        <option value="CategoryAdd">Add</option>
        <option value="CategoryEdit">Edit</option>
        <option value="CategoryDelete">Delete</option>
        <option value="CategoryView">View</option>
      </select>
        </td>
        <td>
        <select class="form-control" id="sel3" onchange="sFunc()">
        <option>--Select--</option>
        <option value="SupplierAdd">Add</option>
        <option value="SupplierEdit">Edit</option>
        <option value="SupplierDelete">Delete</option>
        <option value="SupplierView">View</option>
      </select>
        </td>
      </tr>
      
    </tbody>
    </div>
  </table>
</div>
<jsp:include page="..\MainFooter.jsp"></jsp:include>
</body>
</html>