<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<div class="col-lg-4 col-md-4 col-xs-12 col-sm-12"> </div>
<div class="col-lg-4 col-md-4 col-xs-12 col-sm-12"> 
<form:form action="${pageContext.request.contextPath}/login"  modelAttribute="user">
<div class="form-group" style=" margin-top: 120px;">
<h3 style="margin-left: 156px;">LOGIN</h3>
<div class="clear spaces20"></div>
<label>EMAIL</label>
<form:input path="email" class="form-control" />
</div>

<div class="form-group">
<label>PASSWORD</label>
<form:input path="password" type="password" class="form-control" />
</div>

<div class="form-group">
<button type="submit" class="btn btn-primary" class="form-control">LOGIN</button>  <a href="${pageContext.request.contextPath}/register" class="btn btn-cntu"  > New User</a>

</div>
</form:form>
</div>
<div class="col-lg-4 col-md-4 col-xs-12 col-sm-12"> </div>
</div>


<jsp:include page="footer.jsp"></jsp:include>