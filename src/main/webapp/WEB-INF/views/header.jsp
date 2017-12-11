<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form" %>
    
    
<!DOCTYPE html >
<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/fav.ico" type="image/x-icon" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"> </script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/formValidationScript.js"></script>

<title>BagiT</title>
</head>
<body>
<nav id="navbar-red" class="navbar navbar-inverse navbar-static-top" role="navigation">

<div class="continer">
<ul class="nav navbar-nav" >
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"data-target="bs-example-nav">

<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</ul>
</div> 

<div class="navbar-header" id="bs-example-nav" style="width:100%;">
<table border='0' width='100%' cellpadding='0' cellspacing='0' bordercolor='#000000'>  
							<tr>				
								<td valign="top" width="50%"><a href="home.html">
									<img src="${pageContext.request.contextPath}/resources/new2.png" id="imagestyle" alt="logo" />
								</a></td>           
								<td align="center" >
<ul class="nav navbar-nav">

<li><a style="color:white;font-size:large" href="${pageContext.request.contextPath}"><span class="glyphicon glyphicon-home"></span>&nbsp;  HOME</a></li>
<c:if test="${pageContext.request.userPrincipal.name==null }">

<li><a style="color:white;font-size:large" href="${pageContext.request.contextPath}/goTologin"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;LOGIN</a></li>

<li><a style="color:white;font-size:large" href="${pageContext.request.contextPath}/register">&nbsp;<span class="glyphicon glyphicon-user"></span>&nbsp;SIGN UP</a></li>

</c:if>


<c:if test="${pageContext.request.userPrincipal.name!=null }">
<c:if test="${sessionScope.roleName=='admin'}">
<li class="navbarTitleStyle dropdown">
<a class="dropdown-toggle navbarTitleStyle" data-toggle="dropdown" style="color:white;font-size:large" >CATEGORY
<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="${pageContext.request.contextPath}/admin/AddCategory">Add Category</a></li>
<li><a href="${pageContext.request.contextPath}/admin/Category">List Category</a></li>
</ul>
</li>

<li class="navbarTitleStyle dropdown"><a class="dropdown-toggle navbarTitleStyle" data-toggle="dropdown" style="color:white;font-size:large" >SUPPLIER
<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="${pageContext.request.contextPath}/admin/AddSupplier">Add Supplier</a></li>
<li><a href="${pageContext.request.contextPath}/admin/Supplier">List Supplier</a></li>
</ul>
 </li>
											  
											
<li class="navbarTitleStyle dropdown"><a class="dropdown-toggle navbarTitleStyle" data-toggle="dropdown" style="color:white;font-size:large" >PRODUCTS<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="${pageContext.request.contextPath}/admin/Product">Add Product</a></li>
<li><a href="${pageContext.request.contextPath}/admin/productlist">List Product</a></li>

</ul>
 </li>
</c:if>


 
 



<c:if test="${sessionScope.roleName=='user'}">
<li><a style="color:white;font-size:large" href="${pageContext.request.contextPath}/AllProducts"><i class="fa fa-shopping-bag"></i>&nbsp;&nbsp;PRODUCTS</a></li>
 <li><a style="color:white;font-size:large" href="${pageContext.request.contextPath}/MyCart"><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;MY CART<div class="badge" id="count-mycart">${sessionScope.cartcount}</div></a></li>
</c:if>







 <li><a style="color:white;font-size:large" href="${pageContext.request.contextPath}/logout"><span class="glyphicon glyphicon-log-out"></span>&nbsp;LOG OUT</a></li>
</c:if>



</td>
</tr>
</table>
</div>
</nav>

