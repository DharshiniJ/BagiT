<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <jsp:include page="header.jsp"></jsp:include> 
 <div class="clear spaces20"></div>
<div class="clear spaces20"></div>
<div class="clear spaces20"></div>
<div class="clear spaces20"></div>


<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 spaces5"  align="center" >
				
			
			

			<div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
    <c:forEach items="${productList}" var="product">
    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
				<a href="${pageContext.request.contextPath}/ProductDetail/${product.productId}">
					<img src="${pageContext.request.contextPath}/resources/pimages/${product.productId}.jpg" class="watchListImage" alt="Title1">
						</a>
					<div>
					<span><b> ${product.productName}</b></span>
					<div class="clear"></div>
					<div class="clear"></div>
					<span> ${product.price}</span>
				</div>
			
				</div>
				</c:forEach>
				
					</div>
					
					
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>



