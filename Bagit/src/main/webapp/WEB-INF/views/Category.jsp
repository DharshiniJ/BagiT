<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <jsp:include page="header.jsp"></jsp:include> 
 <div class="clear spaces20"></div>
<div class="clear spaces20"></div>

<div class="clear spaces20"></div>
<div class="clear spaces20"></div>
<div class="clear spaces20"></div>

<div class="clear spaces20"></div>

<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12"> 

<table class="table table-sm table-inverse" style="margin-left: 218px;   width: 58%;
    max-width: 70%;
    margin-bottom: 20px;margin-top: 83px;">
<thead class="thead-inverse" style="font-variant-caps: all-petite-caps; font-family: initial;" >
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
<td><a href="<c:url value="updateCategory/${category.catId}"/>">UPDATE</a>/
<a href="<c:url value="deleteCategory/${category.catId}"/>">DELETE</a></td>
</tr>

</c:forEach>
 </tbody>
</table>
</div>


<jsp:include page="footer.jsp"></jsp:include>