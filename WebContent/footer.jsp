<footer>
	<% 
	if(session.getAttribute("User") == null){
	%>
		<p>Vous n'etes pas connect�</p>
	<% 
	}else{
	%>
		<p>Bonjour <% out.println(session.getAttribute("User")); %> !</p>
	<% 
	}
	%>
</footer>