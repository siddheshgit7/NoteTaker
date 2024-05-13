<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Add Notes</title>
    
    <link href="css/style.css" rel="stylesheet"> 
    
    <%@ include file="all_js_css.jsp" %>
    
</head>
<body>

	<div class="container">
	
		<%@ include file="navbar.jsp" %>
		
		<br>
		
		<h1>Please Fill your Note Detials</h1>
		
		<br>
		
		<!-- this is add form -->
		<form action="SaveNoteServlet" method="post">
		
		  <div class="form-group">
		  
		    <label for="title">Note Title</label>
		    <input type="text"
		     class="form-control"
		     name="title"
		     id="title"
		     aria-describedby="emailHelp"
		     placeholder="Enter Here .." required />
		     
		  </div>
		  
		  <div class="form-group">
		  
		    <label for="content">Note Content</label>
		    <textarea id="content" 
		    placeholder="Enter your Content Here 1500 words"
		    class="form-control"
		    name="content"
		    style="height: 300px;"
		    required
		    ></textarea>
		    
		  </div>
		  		  
		  		  
		  <div class="container text-center">		
		  	 <button type="submit" class="btn btn-primary">Add</button>
		  </div>
		  
		  
		</form>
		
		
	</div>

</body>
</html>















