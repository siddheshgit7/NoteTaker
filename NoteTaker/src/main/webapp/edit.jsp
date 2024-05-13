<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@ include file="all_js_css.jsp" %>
<%@ page import="org.hibernate.Session,com.entities.*" %>



</head>
<body>

	<div class="container">
	
		<%@include file="navbar.jsp" %>
		
		<h1>Edit Your Note</h1>
		
		<br>
		
			
		
		<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		
			Session se  = FactoryProvider.getFactory().openSession();
			
			Note note = (Note)se.get(Note.class,noteId);			
		%>
		
		
		<!-- this is add form -->
		<form action="UpdateServlet" method="post">
		
		 <input value="<%= note.getId() %>" name ="noteId" type="hidden"/> <!-- 'hidden' - it will be hidden in Form -->
		
		  <div class="form-group">
		  
		    <label for="title">Note Title</label>
		    <input type="text"
		     class="form-control"
		     name="title"
		     id="title"
		     aria-describedby="emailHelp"
		     placeholder="Enter Here .." required 
		     
		     value = <%=note.getTitle() %>
		     />
		     
		  </div>
		  
		  <div class="form-group">
		  
		    <label for="content">Note Content</label>
		    <textarea id="content" 
		    placeholder="Enter your Content Here 1500 words"
		    class="form-control"
		    name="content"
		    style="height: 300px;"
		    required		    
		    ><%= note.getContent() %></textarea>
		    
		  </div>
		  		  
		  		  
		  <div class="container text-center">		
		  	 <button type="submit" class="btn btn-success">Save your note</button>
		  </div>
		  
		  
		</form>
		
		
		
	
	</div>
	

	

</body>
</html>