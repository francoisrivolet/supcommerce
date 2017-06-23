<header>
	<a href="<%= request.getContextPath()+"/listProduct" %>" class="btn">List Product</a>	
	<% 
		String sessionParam = (String) request.getSession().getAttribute("User");
		if (sessionParam != null) {
	%>
			<a href="<%= request.getContextPath()+"/auth/addProduct.jsp" %>" class="btn">Add Product</a>
			<a href="<%= request.getContextPath()+"/auth/basicInsert" %>" class="btn">Insert basic Product</a>
			<a href="<%= request.getContextPath()+"/auth/addCategory.jsp" %>" class="btn">Add Category</a>
			
			<a href="<%= request.getContextPath()+"/logout" %>" class="btn">Logout</a>
	<%} else {%>
			<a href="<%= request.getContextPath()+"/login.jsp" %>" class="btn">Login</a>
	<% } %>
</header>