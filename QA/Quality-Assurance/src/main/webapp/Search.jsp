<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Page</title>
      <link href="CSS/search.css" rel="stylesheet">
  </head>
  <body>
    
        
        <div class="m">
        <form action="login" method="post">
        <h1>Search Item details</h1>
		
		Item Name <input type="text" name="name" class="form-group" placeholder="Enter Item name"><br>
		Item Code <input type="text" name="code" class="form-group" placeholder="Enter Item Code"><br><br>
		
		<input class="btnn" type="submit" name="submit" value="Search">
		
		<p>Don you want add? <a href="http://localhost:8090/Quality-Assurance/Insert.jsp">Add New</a></p>
	    </form>
</div>
      
  </body>
</html>
