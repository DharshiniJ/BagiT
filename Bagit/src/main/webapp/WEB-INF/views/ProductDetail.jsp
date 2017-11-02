<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <jsp:include page="header.jsp"></jsp:include> 
 <div class="clear spaces20"></div>
<div class="clear spaces20"></div>


<div class="clear spaces20"></div>

<div class="clear spaces20"></div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" >
<img src="${pageContext.request.contextPath}/resources/pimages/${product.getProductId()}.jpg""  alt="Title1" style="height: 376px;
    width: 501px;">
<div class="clear"></div>
</div>
<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="margin-top: 107px;">
<span><b style="font-size: x-large;"> ${product.getProductName()}</b></span>
					<div class="clear"></div>
					<div class="clear spaces20"></div>
					<span><i class="fa fa-inr"></i> ${product.getPrice()}</span>
					
</div>
</div>				
					


















<jsp:include page="footer.jsp"></jsp:include>