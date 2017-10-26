<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <jsp:include page="header.jsp"></jsp:include> 
 <div class="clear spaces20">
</div>
<div class="clear spaces20">
</div> 
<div class="clear spaces20">
</div>

<div class="clear spaces20"></div>
<div class="clear spaces20"></div>
<div class="clear spaces20"></div>
<table class="table table-sm table-inverse" style="margin-left: 218px;   width: 58%;
    max-width: 70%;
    margin-bottom: 20px;margin-top: 83px;">
<thead class="thead-inverse" style="font-variant-caps: all-petite-caps; font-family: initial;" >
<tr>
<th>Supplier Id</th>
<th>Supplier Name</th>
<th>Supplier Desc</th>
<th>Operations</th>
</tr>
</thead>
<c:forEach items="${supplierList}" var="supplier">
<tr>
<td>${supplier.supId}</td>
<td>${supplier.supName}</td>
<td>${supplier.supDesc}</td>
<td><a href="<c:url value="updateSupplier/${supplier.supId}"/>">UPDATE</a>/
<a href="<c:url value="deleteSupplier/${supplier.supId}"/>">DELETE</a></td>
</tr>

</c:forEach>
</table>
<jsp:include page="footer.jsp"></jsp:include>