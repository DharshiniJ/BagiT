<%@ page language="java" contentType="text/html"%>
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
<c:if test="${sessionScope.roleName=='admin'}">
<div class="col-lg-2 col-md-2 col-xs-12 col-sm-12"> </div>
<div class="col-lg-8 col-md-8 col-xs-12 col-sm-12"> 


<div class="clear spaces20"></div>
<div style="margin-left:350px;"><label>PRODUCT LIST</label></div>
<div class="clear spaces20"></div>
<table class="table table-sm table-inverse">
<thead class="thead-inverse" style="font-variant-caps: all-petite-caps; font-family: initial;" >
<tr>
<th>Product Id</th>
<th>Product Name</th>

<th>Product Price</th>
<th>Product Stock</th>
<th>Category</th>

<th>Product Image</th>
<th>Operations</th>
</tr>
</thead>
</table>
<div style="width:850px; height:341px; overflow:auto;"><table class="table table-sm table-inverse">
<c:forEach items="${productList}" var="product">
<tr>
<td>${product.productId}</td>
<td>${product.productName}</td>

<td>${product.price}</td>
<td>${product.stock}</td>
<td>${product.catId}</td>

<td><a href="ProductDesc/${product.productId}"><img src="<c:url value="/resources/pimages/${product.productId}.jpg"/> "width="50px" height="50px" />
</a></td>
<td><a href="${pageContext.request.contextPath}/admin/updateProduct/${product.productId}">&nbsp;<span class="glyphicon glyphicon-pencil" style="color:black;"></span></a>&nbsp;&nbsp;
<a href="${pageContext.request.contextPath}/admin/deleteProduct/${product.productId}"><span class="glyphicon glyphicon-trash" style="color:black;"></span></a></td>

</tr>

</c:forEach>
</table>
</div>
</div>
<div class="col-lg-2 col-md-2 col-xs-12 col-sm-12"> </div>
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