<%-- 
    Document   : reg
    Created on : Mar 17, 2020, 7:17:06 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<body>
    <h1>Registration Form</h1>

        <form method="post" action="index.jsp">
   
    <div class="content">
    <div class="container">
        <img class="bg-img" src="https://mariongrandvincent.github.io/HTML-Personal-website/img-codePen/bg.jpg" alt="">

        <div class="menu">

            <a href="#" class="btn-connexion"><h2>SIGN UP</h2></a>

        </div>

        <div class="connexion">

            <div class="contact-form">
                                        <label>USERNAME</label>
                                        <input  type="text" name="username">

                                        <label>PASSWORD</label>
                                        <input  type="text" name="password">
                                       
                                        <label>EMAIL</label>
                                        <input  type="text" name="email">
                                       
                                        <label>ADDRESS</label>
                                        <input  type="text" name="address">
                                       
                                        <label>GENDER</label>
                                        <input  type="text" name="gender">
                                       
                                        <label>PHONE</label>
                                        <input  type="text" name="phone">
                                       
                                        <br></br>
                                        
                                        <input class="submit" value="SIGN UP" type="submit">

            </div>



        </div>




    </div>

    </div>        
        </form>





</body>
       <style>
 body {
  font-family: 'Open Sans',sans-serif;
  font-weight: 500;
  color:#fff
}
.info p {
  text-align:center;
  color: #999;
  text-transform:none;
  font-weight:600;
  font-size:15px;
  margin-top:2px
}

.info i {
  color:#55acee;
}

h1 {
  text-align:center;
  color: #666;
  text-shadow: 1px 1px 0px #FFF;
  margin:40px 0px 0px 0px
}

h2 {
  font-size: 20px;
  font-weight: 600;
}

a {
  text-decoration: inherit;
  color: inherit;
}

.content {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 900px;
  background: #f2f2f2;
  z-index:-1;
}

.container {
  display: block;
  position: relative;
  width: 530px;
  height: 679px;
  margin: auto;
  margin-top: 100px;
  box-shadow: 1px 5px 10px 1px #333;
  overflow:hidden;
}

img.bg-img {
  display: block;
  position: absolute;
  margin: auto;
}

.menu {
  position: relative;
  padding: 10% 9% 0 9%;
}

.menu h2 {
  display: inline;
  margin: 20px;
  padding-bottom: 3px;
  border-bottom: 3px solid #1161ee;
}
a:not(.active) {
  cursor:inherit;
}
.menu .active h2 {
  border-bottom: 0 solid #1161ee;
  color: #AEAEAE;
  transition: color 0.5s ease-in;
}

.connexion {
    position: absolute;
    padding: 6% 13%;
    width: 74%;
    left:0px;
    transition: all 0.7s;
}

.connexion h2 {
    display: inline;
    margin: 20px;
    padding-bottom: 3px;
    border-bottom: 2px solid #1161ee;
}

label {
    display: block;
    margin-top: 11px;
    padding: 5px 10px;
    font-size: 15px;
    font-weight: 600;
    color: #fff;
}

input {
    display: block;
    width: 93%;
    margin: auto;
    padding: 13px;
    border: 0;
    border-radius: 20px;
    font-family: "Roboto",sans-serif;
    opacity: 0.15;
}

input p {
    color: #fff;
    opacity: 1;
}

input.submit {
    width: 100%;
    padding: 8px;
    font-size: 17px;
    font-weight: 700;
    color: #fff;
    opacity: 1;
    background-color: #1161EE;
    cursor: pointer;
}



.path-moving,
.path-back {
    fill: none;
    stroke: #1161ee;
    stroke-width: 3px;
    stroke-linecap: round;
    stroke-linejoin: round;
}

.path-moving {
    -webkit-transition: stroke .4s,stroke-dasharray .4s,stroke-dashoffset .4s;
    transition: stroke .4s,stroke-dasharray .4s,stroke-dashoffset .4s;
    stroke: #ffffff;
    stroke-dasharray: 110;
    stroke-dashoffset: -32;
}
.enregistrer {
    position: absolute;
    padding: 15% 13%;
    width: 74%;
    right:0px;
    transition: all 0.7s;
}
.active-section {
    position: absolute;
    right:500px;
}
.remove-section {
    position: absolute;
    left: 500px;
}

</style>
           
           <script>
     
$('.btn-enregistrer').click(function() {
  $('.connexion').addClass('remove-section');
$('.enregistrer').removeClass('active-section');
  $('.btn-enregistrer').removeClass('active');
  $('.btn-connexion').addClass('active');
});

   </script>
    </body>
</html>

