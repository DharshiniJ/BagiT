<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <jsp:include page="header.jsp"></jsp:include> 
 <div class="clear spaces20">
</div>
<div class="clear spaces20">
</div> 
<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12"> 
<div class="col-lg-2 col-md-2 col-xs-12 col-sm-12"></div>
<div class="col-lg-8 col-md-8 col-xs-12 col-sm-12">
	<div class="clear spaces20"></div>
	<div class="titlemargin"><label>SUPPLIER LIST</label></div>
	<div class="clear spaces20"></div>
	<table class="table table-sm table-inverse" >
			<thead class="thead-inverse" id="thead-inversestyle" >
				<tr>
	   					<th>Supplier Name</th>
						<th>Supplier Addrs</th>
						<th>Supplier Email</th>
						<th>Operations</th>
				</tr>
			</thead>
	
		 <tbody class="table table-sm table-inverse" id="table-sm table-inversestyle">
				<c:forEach items="${supplierList}" var="supplier">
							<tr>
							        <td>${supplier.supName}</td>
									<td>${supplier.supAddrs}</td>
									<td>${supplier.supEmail}</td>
									<td><a href="<c:url value="updateSupplier/${supplier.supId}"/>">&nbsp;<span class="glyphicon glyphicon-pencil" id="pencilstyle"></span></a>&nbsp;&nbsp;
										<a href="<c:url value="deleteSupplier/${supplier.supId}"/>"><span class="glyphicon glyphicon-trash" id="pencilstyle"></span></a></td>
							</tr>
				</c:forEach>
		</tbody>
	</table>
</div>
<div class="col-lg-2 col-md-2 col-xs-12 col-sm-12"></div>
</div>
<jsp:include page="footer.jsp"></jsp:include>