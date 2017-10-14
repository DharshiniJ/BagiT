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

<link href="http://localhost:8080/Bagit/resources/css/style.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BagiT</title>
</head>
<body>
<nav id="navbar-red" class="navbar navbar-inverse navbar-static-top" role="navigation">

<div class="continer">
<ul class="nav navbar-nav" style="margin-left: -72px;">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"data-target="bs-example-nav">

<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</ul>
</div>

<div class="collapse navbar-collapse" id="bs-example-nav">
<table border='0' width='100%' cellpadding='0' cellspacing='0' bordercolor='#000000'>  
							<tr>				
								<td valign="top" width="60%"><a href="home.html">
									<img src="http://localhost:8080/Bagit/resources/logo4.png" id="imagestyle" alt="logo" />
								</a></td>           
								<td valign="middle" align="right" class="shiftRight">
<ul class="navbar-nav navbar-left nav">
<li><a style="color:white;font-size:large" href="">HOME</a></li>
<li><a style="color:white;font-size:large" href="/Bagit/Category">CATEGORY</a></li>
<li><a style="color:white;font-size:large" href="/Bagit/Supplier">SUPPLIER</a></li>
<li><a style="color:white;font-size:large" href="/Bagit/Product">PRODUCTS</a></li>
<li><a style="color:white;font-size:large" href="">SIGN IN</a></li>
<li><a style="color:white;font-size:large" href="register">SIGN UP</a></li>
</ul>
</td>
</tr>
</table>
</div>
</nav>

