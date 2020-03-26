<%-- 
    Document   : index
    Created on : Mar 17, 2020, 7:30:22 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<% Class.forName("org.apache.derby.jdbc.ClientDriver");%>
<%  
    String nm=request.getParameter("username");
    String p=request.getParameter("password");
    String e=request.getParameter("email");
    String a=request.getParameter("address");
    String g=request.getParameter("gender");
    String ph=request.getParameter("phone");
    
    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/car","unni","12345");
    Statement st=con.createStatement();
    int i= st.executeUpdate("insert into unnit(username,password,email, address,gender,phone) values('"+nm+"','"+p+"','"+e+"','"+a+"','"+g+"','"+ph+"')");
    out.println("inserted");
    
    }
    %> 
