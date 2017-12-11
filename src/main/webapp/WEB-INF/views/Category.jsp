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
<c:if test="${sessionScope.roleName=='admin'}"> 

	<div class="col-lg-2 col-md-2 col-xs-12 col-sm-12"></div>
	<div class="col-lg-8 col-md-8 col-xs-12 col-sm-12">
		<div class="clear spaces20"></div>
		<div class="titlemargin"><label>CATEGORY LIST</label></div>
		<div class="clear spaces20"></div>
 <table class="table table-sm table-inverse">
	<thead class="thead-inverse" id="thead-inversestyle" >
		<tr>

			<th>Category Name</th>
			<th>Category Desc</th>
			<th>Operations</th>
		</tr>
	</thead>
 
 
		 <tbody class="table table-sm table-inverse" id="table-sm table-inversestyle">
				<c:forEach items="${categoryList}" var="category">
						<tr>
					
							<td>${category.catName}</td>
							<td>${category.catDesc}</td>
							<td><a href="<c:url value="/admin/updateCategory/${category.catId}"/>"> &nbsp;<span class="glyphicon glyphicon-pencil" id="pencilstyle"></span></a>&nbsp;&nbsp;
								<a href="<c:url value="/admin/deleteCategory/${category.catId}"/>"><span class="glyphicon glyphicon-trash" id="pencilstyle"></span></a></td>
						</tr>
		
				</c:forEach>
		 
		</tbody>
 </table>
 </div>

<div class="col-lg-2 col-md-2 col-xs-12 col-sm-12"></div>
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