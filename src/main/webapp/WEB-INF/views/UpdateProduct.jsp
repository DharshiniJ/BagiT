<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <jsp:include page="header.jsp"></jsp:include> 
 <div class="clear spaces20"></div>
<div class="clear spaces20"></div>

<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12"> 
<c:if test="${sessionScope.roleName=='admin'}"> 

<div class="col-lg-3 col-md-3 col-xs-12 col-sm-12"></div>
<div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">  
<form:form action="${pageContext.request.contextPath}/admin/UpdateProduct" modelAttribute="product" method="post" enctype="multipart/form-data">
<div>
<div class="clear spaces20"></div>
<label><b style="margin-left:241px;">UPDATE PRODUCT</b></label>
<div class="clear spaces20"></div>
</div>
<div class="form-group">
<form:input type="hidden" path="productId" class="form-control"/>
</div>
<div class="form-group">
<label>Product Name</label>
<form:input path="productName" class="form-control"/>
</div>
<div class="form-group">
<label>Product Desc</label>
<form:input path="productDesc" class="form-control"/>
</div>
<div class="form-group">
<label>Product Price</label>
<form:input path="price" class="form-control"/>
</div>
<div class="form-group">
<label>Product Stock</label>
<form:input path="stock" class="form-control"/>
</div>
<div class="form-group">
<label>Category Id </label>
<form:select path="catId" class="form-control">
<form:option value="0" label="select category"></form:option>
<form:options items="${categoryList }" class="form-control"/>
</form:select>
</div>
<div class="form-group">
<label>Supplier Id </label>
<form:select path="supId"><form:option value="0" label="select supplier"></form:option>
<form:options items="${supplierList }" class="form-control"/>
</form:select>
</div>
<div class="form-group">
<label>Product Image</label>
<form:input type="file" path="pimage" class="form-control"/>
</div>

<div>
<button type="submit" class="btn btn-primary">UPDATE</button>
</div>


</form:form>
</div>
<div class="col-lg-3 col-md-3 col-xs-12 col-sm-12"> </div>
</c:if>

<c:if test="${sessionScope.roleName!='admin'}">
	<div class="col-lg-2 col-md-2 col-xs-12 col-sm-12"> </div>
	<div class="col-lg-6 col-md-6 col-xs-12 col-sm-12"> 
	
	<h2 style="margin-left:358px;">OOPS!</h2>
	<div class="clear spaces20"></div>
	<h3 style="margin-left:183px;"> Please Check your Mail Id or Password!</h3>
	<img src="${pageContext.request.contextPath}/resources/error image.png" alt=":-(" style=" width: 754px;height: 515px;">
	
	</div>
	<div class="col-lg-2 col-md-2 col-xs-12 col-sm-12"> </div>
</c:if>
</div>







<jsp:include page="footer.jsp"></jsp:include>