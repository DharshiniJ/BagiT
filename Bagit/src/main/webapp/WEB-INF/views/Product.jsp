<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <jsp:include page="header.jsp"></jsp:include> 
 <div class="clear spaces20">
</div>
<div class="clear spaces20">
</div> 
<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 ">
<form:form action="AddProduct" modelAttribute="product" enctype="multipart/form-data">
<table>
<tr><td colspan="2"><center><b>ADD PRODUCT</b></center></td>
</tr>
<tr><td>Product Id</td>
<td><form:input path="productId"/></td>
</tr>
<tr><td>Product Name</td>
<td><form:input path="productName"/></td>
</tr>
<tr><td>Product Desc</td>
<td><form:input path="productDesc"/></td>
</tr>
<tr><td>Product Price</td>
<td><form:input path="price"/></td>
</tr>
<tr><td>Product Stock</td>
<td><form:input path="stock"/></td>
</tr>
<tr><td>Category Id </td>
<td><form:select path="catId">
<form:option value="0" label="select category"></form:option>
<form:options items="${categoryList }"/>
</form:select></td>
</tr>
<tr><td>Supplier Id </td>
<td><form:select path="supId"><form:option value="0" label="select supplier"></form:option>
<form:options items="${supplierList }"/>
</form:select></td>
</tr>
<tr><td>Product Image</td>
<td><form:input type="file" path="pimage"/></td>
</tr>
<tr>
<td colspan="2">
<center><b><input type="submit" value="ADD"/></b></center>
</td>
</tr>
</table>

</form:form>
</div>

<jsp:include page="footer.jsp"></jsp:include>