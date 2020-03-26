<%-- 
    Document   : book_data
    Created on : Mar 18, 2020, 11:41:17 AM
    Author     : USER
--%>





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>

<% Class.forName("org.apache.derby.jdbc.ClientDriver");%>
<%  
    String n=request.getParameter("name");
    String a=request.getParameter("address");
    String d=request.getParameter("destination");
    String h=request.getParameter("home");
    String w=request.getParameter("way");
    String s=request.getParameter("street");
    String da=request.getParameter("data");
    String t=request.getParameter("time");
    String p=request.getParameter("card");
    String e=request.getParameter("expirt");
    
    
    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/car","unni","12345");
    Statement st=con.createStatement();
   int i= st.executeUpdate("insert into book(name,address,destination,home,way,street, data,time,card,expirt) values('"+n+"','"+a+"','"+d+"','"+h+"','"+w+"','"+s+"','"+da+"','"+t+"','"+p+"','"+e+"')");
   
   out.println("inserted");
        
    %> 
    