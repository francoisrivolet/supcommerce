<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.io.IOException"%>
<%@ page import="javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="fr.imie.supcommerce.dao.ProductDao"%>
<%@ page import="fr.imie.supcommerce.entity.Product"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="head.jsp"></jsp:include>
	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<h1>Product #<c:out value="${param.id}" /></h1>
			<c:if test="${not empty product}">
				<dl class="col-md-offset-1">
				  <dt>name : </dt>
				  <dd><c:out value="${product.name}" /></dd>
				  <dt>description :</dt>
				  <dd><c:out value="${product.description}" /></dd>
				  <dt>price : </dt>
				  <dd><c:out value="${product.price}" /> euros</dd>
				</dl>
			</c:if>
			<c:if test="${empty product}">
				<p>No product with id : <c:out value="${param.id}" /></p>
			</c:if>			
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>