<%-- 
    Document   : dedetails_book
    Created on : Mar 18, 2020, 12:19:01 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
      <div id="container">
         <header>Booking</header>
         <form action="/"  method="post">
            <fieldset>
               <br/>
                                        <label>Name:</label>
                                        <%= request.getParameter("name")%>
               <br/><br/>
                                        <label>Address:</label>
                                        <%= request.getParameter("address")%>
                
               <br/><br/>
                                         <label>Destination address:</label>
                                        <%= request.getParameter("destination")%>
              
               <br/><br/>
                                        <label>Home:</label>
                                        <%= request.getParameter("home")%>
               
               <br/><br/>
                                           <label>Way:</label>
                                        <%= request.getParameter("way")%>
                
               <br/><br/>
                                          <label>Street:</label>
                                        <%= request.getParameter("street")%>
              
               <br/><br/>
               
                                         <label>Date:</label>
                                        <%= request.getParameter("data")%>
            
               <br/><br/>
                                        <label>Time:</label>
                                        <%= request.getParameter("time")%>
               
               <br/><br/>
                                       <label>Card Number :</label>
                                        <%= request.getParameter("card")%>
               
               <br/><br/>
                                        <label>Expiry Date:</label>
                                        <%= request.getParameter("expirt")%>
              
               <br/> <br/> <br/>
              
            </fieldset>
         </form>
      </div>
   </body>
      
    <style>
       html {
    height: 100%;
    width: 100%;
}

body {
    background: url("https://mariongrandvincent.github.io/HTML-Personal-website/img-codePen/bg.jpg")no-repeat center center fixed;
    
    background-size: cover;
    font-family: 'Droid Serif', serif;
}

#container {
    background: rgba(3, 3, 55, 0.5);
    width: 18.75rem;
    height: 28rem;
    margin: auto;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
}

header {
    text-align: center;
    vertical-align: middle;
    line-height: 3rem;
    height: 3rem;
    background: rgba(3, 3, 55, 0.7);
    font-size: 1.4rem;
    color: #FCFFFD;
}

fieldset {
    border: 0;
    text-align: left;
    color: #FCFFFD;
}


input[type="text"]:focus,


::placeholder {
    color: #FCFFFD;
}

/*Media queries */

@media all and (min-width: 481px) and (max-width: 568px) {
    #container {
        margin-top: 10%;
        margin-bottom: 10%;
    }
}
    @media all and (min-width: 569px) and (max-width: 768px) {
        #container {
            margin-top: 5%;
            margin-bottom: 5%;
        }
    } 
</style>
</html>
