<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <jsp:include page="header.jsp"></jsp:include> 
 <div class="clear spaces20"></div>
<div class="clear spaces20"></div>

<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12"> 
<c:if test="${sessionScope.roleName=='admin'}"> 

<div class="col-lg-4 col-md-4 col-xs-12 col-sm-12"> </div>
<div class="col-lg-4 col-md-4 col-xs-12 col-sm-12"> 
<div style="margin-top:87px;">
<label><b style="margin-left: 147px;">UPDATE CATEGORY</b></label>
</div>
<div class="clear spaces20"></div>
<form:form action="${pageContext.request.contextPath}/admin/UpdateCategory" modelAttribute="category" method="post">


<div class="form-group">
<form:input type="hidden" path="catId" class="form-control"/>
</div>
<div class="form-group">
<label>Category Name</label>
<form:input path="catName" class="form-control"/>
</div>
<div class="form-group">
<label>Category Desc</label>
<form:input path="catDesc" class="form-control"/>
</div>

<button type="submit" class="btn btn-primary" >UPDATE</button>

</form:form>
</div>
<div class="col-lg-4 col-md-4 col-xs-12 col-sm-12"> </div>
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