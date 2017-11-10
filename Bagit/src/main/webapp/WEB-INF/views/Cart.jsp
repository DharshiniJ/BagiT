<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <jsp:include page="header.jsp"></jsp:include> 
 <div class="clear spaces20"></div>
<div class="clear spaces20"></div>




<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12"> 
<div class="col-lg-2 col-md-2 col-xs-12 col-sm-12"></div>
<div class="col-lg-8 col-md-8 col-xs-12 col-sm-12">
<div class="clear spaces20"></div>
<div  style="margin-left:363px;"><img src="${pageContext.request.contextPath}/resources/cart.png" style="height: 50px;"/><label>MY CART </label></div>
<div class="clear spaces20"></div>
<div style="width:849px; height:350px; overflow:auto;">
<form action= "${pageContext.request.contextPath}/placeorder" method="get">
<table class="table table-sm table-inverse">
<thead class="thead-inverse" style="font-variant-caps: all-petite-caps; font-family: initial;" >
<tr>
<th>Product Name</th>
<th>Product Image</th>
<th> Quantity</th>
<th>Price&nbsp;(&nbsp;<i class="fa fa-rupee"></i>&nbsp;)</th>
<th>Total&nbsp;(&nbsp;<i class="fa fa-rupee"></i>&nbsp;)</th>
<th>Operation</th>
</tr>
</thead>

  
 
 <c:if test="${empty userCartList} }">
 <tr><td >No Record Exists</td></tr>
 </c:if>

<c:forEach items="${userCartList}" var="c" varStatus="st">
<tr >
<td>${c.product.productName}</td>
<td><img src="${pageContext.request.contextPath}/resources/pimages/${c.product.productId}.jpg" style="height:40px;width:40px;"/></td>
<td>${c.cartQnty}</td>
<td>${c.cartPrice}</td>
<td>${c.cartQnty*c.cartPrice}</td>
<td><a href="<c:url value="deleteCart/${c.cartId}"/>"><span class="glyphicon glyphicon-trash" style="color:black;"></span></a></td>
</tr>

<c:set var="gtot" value="${gtot+c.cartPrice*c.cartQnty }"></c:set>
</c:forEach>

<tr>
<td colspan="7" ><span class="col-lg-7" align="right" ><label >GRAND TOTAL:&nbsp;</label>&nbsp;<i class="fa fa-inr"></i>&nbsp;<b><c:out value="${gtot}"></c:out></b></span>
 </td>
 </tr>
 

</table>
 </div>

 <a href="${pageContext.request.contextPath}/" class="btn btn-cntu" style="margin-left: 80px;font-family: -webkit-pictograph;    margin-top: -119px;" > CONTINUE SHOPPING</a><canvas>white</canvas> <input type="submit" value="PLACE ORDER" class="btn btn-plc" style=" font-family: -webkit-pictograph;    margin-top: -119px;">
</form>
</div>


<div class="col-lg-2 col-md-2 col-xs-12 col-sm-12"></div>

</div>


<jsp:include page="footer.jsp"></jsp:include>