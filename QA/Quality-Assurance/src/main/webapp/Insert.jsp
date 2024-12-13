<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <link rel="stylesheet" href="CSS/Insert.css" />
  </head>
    <body>
       <div class="h">
        <form  action="insert" method="post">
         
          <h1>Enter new Return Item details...</h1>
            <label for="username">Item Name</label>
            <input type="text" id="name" name="name" required /><br><br>
            
             <label >Item Code</label>
            <input type="text" id="code" name="code" required /><br><br>
            
            
               <label >Item Supplier</label>
            <input type="text" id="supplier" name="supplier" required /><br><br>
            
            <label >Date</label>
            <input type="date" id="date" name="date" required /><br><br>
       
            <label >Item Quantity  </label>
            <input type="text" id="quantity" name="quantity" required /><br><br>
          
          
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
          <button type="submit">SUBMIT</button>
        </form>
    </div> 
  </body>
</html>
