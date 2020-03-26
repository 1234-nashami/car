<%-- 
    Document   : AddPrice
    Created on : Mar 22, 2020, 6:22:41 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
       <title>register</title>
    <meta charset='utf-8' />
                  <style>
                     
         body{
        margin:10px;
                 background-image:url("resources/bg1.jpg");
                 background-size: cover;
 
  }
         #form{
            border:  1px #333 solid;
      border-spacing: 0px;
      border-collapse: none;
      }
         #form td {
            border:  1px #5c8a8a solid;
      padding: 5px;
      }
     
     
        #paragraph{
      
      background:#ffe6e6;
      font-size:20;
      color:#800000;
      display:inline;
      }
                  </style>
                   
                  <a href="index.html">
                <img src="resources/alpha.JPG" style="width:120px ;height:100px">
            </a>
        
  </head>
     <body>
         <br><br>
         <br><br>
  <form action="Price_controller"  method="post" >
          <table width='500' align='center' id='form' >
              
     
   
              <tr>
                  <td  colspan='2' align='center'><h3>Add Price</h3></td>
                </tr>
               
  <tr>
                    <td>Address: *</td>
                    <td><input type="text" name="address" class='textbox' pattern="[A-Za-z]{3,}" placeholder="Type address here" maxlength="20" required></td> 
                </tr>
     
     
       <tr>
                   <td>Destination: *</td>
                   <td><input type='text' name="destination" class='textbox'
       placeholder="Type destination here" maxlength="20" required></td> 
               </tr>
     
     
     
       <tr>
                   <td>Price:*</td>
                   <td><input type='text' name="price" class='textbox' placeholder="The price" maxlength="20" 
                                required></td> 
               </tr>
               <tr>
                  
    
    <tr>
    <td colspan='2'>
    <p id="paragraph">*  indicates a required field </p>
    </tr>
    
  
                                   
      <tr>
          <td colspan='2' align='right'>
       <input type="submit" value='Add Price' class='Btn'/>
       <input type="reset" value='Reset' class='Btn'>   
       </td>
      </tr>
    
    </table>
    </form>
  </body>
</html>

                    
