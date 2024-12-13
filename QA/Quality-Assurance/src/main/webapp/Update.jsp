<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit Profile Page</title>
    <link rel="stylesheet" href="CSS/Insert.css" />
  </head>
  <body>
  
  <%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
	String code = request.getParameter("code");  
	String supplier= request.getParameter("supplier");
	String date = request.getParameter("date");
	String quantity = request.getParameter("quantity");
%>
 
 
  <div class="h">
    
        
        <form  action="update" method="post">
        <h1>Update Item details...</h1>
         
             <label >Item ID</label>
            <input type="text" id="id" name="id" required  value="<%= id %>"  readonly/><br><br>
          
            <label for="username">Item Name</label>
            <input type="text" id="name" name="name" required  value="<%= name %>"  /><br><br>
            
             <label >Item Code</label>
            <input type="text" id="code" name="code" required value="<%= code %>" /><br><br>
            
               <label >Supplier</label>
            <input type="text" id="supplier" name="supplier" required value="<%= supplier %>" /><br><br>
            
             
            <label >Date</label>
            <input type="date" id="date" name="date" required value="<%= date %>" /><br><br>
       
            <label >Quantity  </label>
            <input type="text" id="quantity" name="quantity" required value="<%= quantity %>" /><br><br>
          
          
          <div class="form-group checkbox-agreement">
            <tr>
              <td>
                <input
                  type="checkbox"
                  id="agreement"
                  name="agreement"
                  class="chec"
                  required
                />
              </td>
              <td>
                <label for="agreement"
                  >I agree to the <a href="#">Terms and Services</a></label
                >
              </td>
            </tr>
          </div><br><br>
          <button type="submit">UPDATE</button>
        </form>
       </div> 
  </body>
</html>
