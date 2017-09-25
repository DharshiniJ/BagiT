<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <jsp:include page="header.jsp"></jsp:include>
 <link href="resources/css/style.css" rel="stylesheet"> 
 <div class="clear spaces20">
</div>
<div class="clear spaces20">
</div> 
<div id="marg"> 
<table align="center" border="0">
<tr>
<td colspan="2" id="fit" align="center"><label>SIGN UP</label></td>
</tr>
<tr> 
<td><label>Name</label></td>
<td><input type="text"  placeholder="NAME"  /></td>

</tr>
<tr> 
<td><label>Mobile No.</label></td>
<td><input type="number"  placeholder="Mobile Number(optional)"  /></td>

</tr>
<tr> 
<td><label>Email</label></td>
<td><input type="text"  placeholder="Email Address"  /></td>

</tr>
<tr>
<td><label>Password</label></td>
<td><input type="password" placeholder="Create a password" /></td>

</tr>
<tr align="center">
<td colspan="3"><input type="submit" value="Continue" /></td>
</tr>
</table>
</div>
<jsp:include page="footer.jsp"></jsp:include>

