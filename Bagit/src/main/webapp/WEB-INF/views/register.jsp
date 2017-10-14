<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="resources/css/style.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 </head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container"><h1>SIGN UP FORM</h1><div class="col-lg-12"><div class="row">
<spr:form modelAttribute="user" action="saveRegister" method="post">
<div class="form-group">
<label>Email</label>
<spr:input path="email" placeholder="Enter email id..." class="form-control"/>
</div>

<div class="form-group">
<label>Name</label>
<spr:input path="name" placeholder="Enter Name..." class="form-control"/>
</div>


<div class="form-group">
<label>Password</label>
<spr:input type="password" path="password" placeholder="Enter password..." class="form-control"/>
</div>


<div class="form-group">
<label>Address</label>
<spr:input path="address" placeholder="Enter address..." class="form-control"/>
</div>


<div class="form-group">
<label>Phone</label>
<spr:input path="phone" placeholder="Enter phone no...." class="form-control"/>
</div>

<div class="form-group">
<label>Country</label>
<spr:input path="country" placeholder="Enter country..." class="form-control"/>
</div>

<button type="submit" class="btn btn-lg btn-info">SUBMIT</button>
<button type="reset" class="btn btn-lg btn-info">CANCEL</button>


</spr:form>
</div></div> </div>
</body>
</html>