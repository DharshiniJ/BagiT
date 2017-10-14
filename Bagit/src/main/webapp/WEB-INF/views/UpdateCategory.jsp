<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <jsp:include page="header.jsp"></jsp:include> 
 <div class="clear spaces20">
</div>
<div class="clear spaces20">
</div>
<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 container">
<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12"> 
<form:form action="UpdateCategory" modelAttribute="category" method="post">
<table>
<tr><td colspan="2">Update Category</td>
</tr>
<tr><td>Category Id</td>
<td><form:input path="catId"/></td>
</tr>
<tr><td>Category Name</td>
<td><form:input path="catName"/></td>
</tr>
<tr><td>Category Desc</td>
<td><form:input path="catDesc"/></td>
</tr>
<tr>
<td colspan="2">
<center><input type="submit" value="UPDATE"/></center>
</td>
</tr>
</table>

</form:form>
</div>
<div class="clear spaces20">
</div>
<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12"> 
<table class="table">
<thead class="thead-inverse"><!--  style="font-variant-caps: all-petite-caps; font-family: initial;" -->
<tr>
<th>Category Id</th>
<th>Category Name</th>
<th>Category Desc</th>
<th>Operations</th>
</tr>
</thead>
 <tbody>
 
<c:forEach items="${categoryList}" var="category">
<tr>
<td>${category.catId}</td>
<td>${category.catName}</td>
<td>${category.catDesc}</td>
<td><a href="<c:url value="updateCategory/${category.catId}"/>">UPDATE </a>/
<a href="<c:url value="deleteCategory/${category.catId}"/>">DELETE </a> </td>
</tr>

</c:forEach>
 </tbody>
</table>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>