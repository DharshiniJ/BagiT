<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <jsp:include page="header.jsp"></jsp:include> 
 <div class="clear spaces20">
</div>
<div class="clear spaces20">
</div> 
<div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top:20px">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>   
      
        <div class="carousel-inner" align="center">
            <div class="item active">
                <img src="${pageContext.request.contextPath}/resources/bag17.jpg" alt="First Slide" class="sliderimage">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/resources/bag22.jpg" alt="Second Slide" class="sliderimage">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/resources/bag19.jpg" alt="Third Slide" class="sliderimage">
            </div>
        </div>
       
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    
</div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 spaces5"  align="center" >
				<h1 class="collectionStyle">Collections</h1>
			</div>
			<div class="clear spaces20"></div>
			<div class="clear spaces20"></div>
<div class="clear spaces20"></div>
<div class="clear spaces20"></div>
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 "  style="margin-left: 178px;">
			        <a href="${pageContext.request.contextPath}/AllProducts">		<img src="${pageContext.request.contextPath}/resources/pimages/1008.jpg" class="watchListImage" alt="Title1" >
					<b style="margin-left: 98px;color: black;"> Leather</b></a>
				</div>
				
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 ">
				   <a href="${pageContext.request.contextPath}/AllProducts">	<img src="${pageContext.request.contextPath}/resources/pimages/1013.jpg" class="watchListImage" alt="Title2">
					<b style="margin-left: 126px;color: black;">Jute</b> </a>
				</div>
				
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3  ">
					<a href="${pageContext.request.contextPath}/AllProducts"><img src="${pageContext.request.contextPath}/resources/pimages/1005.jpg" class="watchListImage" alt="Title3">
					<b style="margin-left: 86px;color: black;">Animal Prints</b></a>
				</div>

</div>



<jsp:include page="footer.jsp"></jsp:include>