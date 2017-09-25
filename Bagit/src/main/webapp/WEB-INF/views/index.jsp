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
        <!-- Wrapper for carousel items -->
        <div class="carousel-inner" align="center">
            <div class="item active">
                <img src="resources/bag17.jpg" alt="First Slide" class="sliderimage">
            </div>
            <div class="item">
                <img src="resources/bag22.jpg" alt="Second Slide" class="sliderimage">
            </div>
            <div class="item">
                <img src="resources/bag19.jpg" alt="Third Slide" class="sliderimage">
            </div>
        </div>
        <!-- Carousel controls -->
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
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
align-content: center;
    margin-left: 154px;>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 justifyContent bookListGrid"  style="margin-left: 178px;">
					<img src="resources/bag7.jpg" class="watchListImage" alt="Title1">
					<div class="clear"></div>
					<span><b> Brand</b><span>
					<div class="clear"></div>
					<span> Description</span>
					<div class="clear"></div>
					<span> Price</span>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 justifyContent bookListGrid">
					<img src="resources/bag9.jpg" class="watchListImage" alt="Title2">
					<div class="clear"></div>
					<span><b> Brand</b><span>
					<div class="clear"></div>
					<span> Description</span>
					<div class="clear"></div>
					<span> Price</span>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 justifyContent bookListGrid">
					<img src="resources/bag18.jpg" class="watchListImage" alt="Title3">
					<div class="clear"></div>
					<span><b> Brand</b><span>
					<div class="clear"></div>
					<span> Description</span>
					<div class="clear"></div>
					<span> Price</span>
				</div>
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>