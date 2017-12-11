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
<c:if test="${sessionScope.roleName=='admin'}"> 
<div class="col-lg-4 col-md-4 col-xs-12 col-sm-12 "></div>
<div class="col-lg-4 col-md-4 col-xs-12 col-sm-12 ">

<form:form action="${pageContext.request.contextPath}/admin/AddSupplier" name="supForm" id="supForm" modelAttribute="supplier">
<div>
<div class="clear spaces20"></div>

<div class="addtop">
<label><b class="addstyle">ADD SUPPLIER</b></label>
</div>
<div class="clear spaces20">
</div>

<div class="form-group">
<label>Supplier Name</label>
<form:input path="supName" class="form-control"/>
<form:errors path="supName" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<label>Supplier Address</label>
<form:input path="supAddrs" class="form-control"/>
<form:errors path="supAddrs" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<label>Supplier Email</label>
<form:input path="supEmail" class="form-control"/>
<form:errors path="supEmail" cssStyle="color:red"></form:errors>
</div>


<div>
<button type="submit" class="btn btn-primary">ADD</button>
</div>
</div>
</form:form>
</div>
<div class="col-lg-4 col-md-4 col-xs-12 col-sm-12 "></div>
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