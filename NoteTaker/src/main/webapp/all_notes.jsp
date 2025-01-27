<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="all_js_css.jsp" %>

<title>All Notes : Note Taker</title>
</head>
<body>

	<div class="container">
	
		<%@ include file="navbar.jsp" %>
		
		<br>
		
		<h1 class="text-uppercase">All Notes:</h1>
		
		
		<div class="row">
		
			<div class="col-12">
			
				<%
		
					Session s= FactoryProvider.getFactory().openSession();
					
					Query q = s.createQuery("from Note");
					List<Note> list = q.list();
					
					for(Note note : list)
					{						
						%>
						
						<div class="card mt-3">
							<img class="card-img-top m-2 mx-auto" alt="Card Image Cap" src="img/notes.png" style="width:60px;">
							<div class="card-body px-5"> <!-- 'x' means left and right -->
							
								<h5 class="card-title"><%=note.getTitle()  %></h5>
								
								<p class="card-text">
									<%= note.getContent() %>															
								</p>
								
								<p><b>	<%= note.getAddedDate() %> </b></p>
								
								<div class="container text-center mt-2">
									<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
									<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
								</div>							
							
							</div>
						
						</div>
					
					
						<%	
					}
					
					
					s.close();
				
				%>
			
			</div>
			
		</div>
		
		
		
		
		
		
	
	</div>

</body>
</html>