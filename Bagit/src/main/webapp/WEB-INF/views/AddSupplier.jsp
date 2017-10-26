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
<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12"> 

<form:form action="AddSupplier" modelAttribute="supplier">
<table>
<tr>
<tr><td colspan="2"><center><b>ADD SUPPLIER</b></center></td>
</tr>
<tr>
<td>Supplier Id</td>
<td><form:input path="supId"/></td>
</tr>
<tr>
<td>Supplier Name</td>
<td><form:input path="supName"/></td>
</tr>
<tr>
<td>Supplier Address</td>
<td><form:input path="supDesc"/></td>
</tr>
<tr>
<td colspan="2">
<center><b><input type="submit" value="ADD"/></b></center>
</td>
</tr>
</table>

</form:form>
</div>