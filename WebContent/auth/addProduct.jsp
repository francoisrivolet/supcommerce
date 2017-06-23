<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<jsp:include page="/head.jsp"></jsp:include>
<body>
<jsp:include page="/header.jsp"></jsp:include>
	<h1>Add product :</h1>
	<form action="addProduct" method="post" class="form-horizontal">
		<div class="form-group">
		    <label for="name" class="col-sm-2 control-label">Name</label>
		    <div class="col-sm-5">
		      <input type="text" class="form-control" id="name" name="name" placeholder="Name">
		    </div>
		</div>
	
		<div class="form-group">
		    <label for="description" class="col-sm-2 control-label">Descritption</label>
		    <div class="col-sm-5">
		      <input type="text" class="form-control" id="description" name="description" placeholder="Description">
		    </div>
		</div>
		<div class="form-group">
		    <label for="price" class="col-sm-2 control-label">Price</label>
		    <div class="col-sm-5">
		      <input type="number" class="form-control" id="price" name="price" placeholder="Price">
		    </div>
		</div>
		 <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" class="btn btn-default">Add</button>
		    </div>
		 </div>
	</form>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>