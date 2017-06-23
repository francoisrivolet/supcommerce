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
		<h1>List Product :</h1>
			<table class="table">
					<tr>
						<th>id</th>
						<th>name</th>
						<th>description</th>
						<th>price</th>
						<th>action</th>
					</tr>
				<c:forEach items="${products}" var="p">
					<tr>
						<td><c:out value="${p.id}" /></td>
						<td><a href="/SupCommerce/showProduct?id=${p.id}"><c:out value="${p.name}" /></a></td>
						<td><c:out value="${p.description}" /></td>
						<td><c:out value="${p.price}" /></td>
						<td>
							<form action="auth/removeProduct" method="post">
								 <input type="submit" value="Delete">
								 <input type="hidden" name="remove" value="${p.id}">
							</form>
						</td>
					</tr>
				</c:forEach>
			</table>
		<jsp:include page="footer.jsp"></jsp:include>
		</body>
</html>