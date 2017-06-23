<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="head.jsp"></jsp:include>
	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<h1>Login</h1>
			<form class="form-horizontal" action="login" method="post">
			<div class="form-group">
			    <label for="login" class="col-sm-2 control-label">Username</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control" id="login" name="login" placeholder="Username">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" class="btn btn-default" value="Ok">Ok</button>
			    </div>
			  </div>
			</form>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>