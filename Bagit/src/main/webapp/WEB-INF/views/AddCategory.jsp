<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <jsp:include page="header.jsp"></jsp:include> 
 <div class="clear spaces20"></div>
<div class="clear spaces20"></div>
<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 ">
<div class="col-lg-4 col-md-4 col-xs-12 col-sm-12 "></div>
<div class="col-lg-4 col-md-4 col-xs-12 col-sm-12 ">
<div style="margin-top:87px;">
<label><b style="margin-left: 147px;">ADD CATEGORY</b></label>
<div class="clear spaces20"></div>
<form:form action="AddCategory" modelAttribute="category">
  <div class="form-group">
   <label>Category Id</label>
<form:input path="catId" class="form-control"/>
  </div>
  
  <div class="form-group">
    <label>Category Name</label>
<form:input path="catName" class="form-control"/>
  </div>
  <div class="form-group">
    <label>Category Desc</label>
    <form:input path="catDesc" class="form-control"/>
  </div>
  
  <button type="submit" class="btn btn-primary">ADD</button>
</form:form>
</div>
</div>
<div class="col-lg-4 col-md-4 col-xs-12 col-sm-12 "></div>
</div>
<jsp:include page="footer.jsp"></jsp:include>