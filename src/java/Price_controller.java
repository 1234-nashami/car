/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

public class Price_controller extends HttpServlet {
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
       PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
 
    String addr=request.getParameter("address");
    String des=request.getParameter("destination");
    String pr=request.getParameter("price");
 
 
 
 
    // validate given input
  if (addr.isEmpty() || des.isEmpty() || pr.isEmpty()) {
   RequestDispatcher r = request.getRequestDispatcher("AddPrice.jsp");
   out.println("<font color=red> All the fields are required, Please fill them</font>");
   r.include(request, response);
  } else {
      try {
        Connection con;
      String driver = "org.apache.derby.jdbc.ClientDriver";
      
   
     con = DriverManager.getConnection("jdbc:derby://localhost:1527/car","unni","12345");
    Statement st=con.createStatement();
    int i= st.executeUpdate("insert into prices(address,destination,price) values('"+addr+"','"+des+"','"+pr+"')");
   
    out.println("Price Inserted Successfuly");
    st.close();
    con.close();
    }
      catch (SQLException e) {
      
    // TODO Auto-generated catch block
    e.printStackTrace();
   }
      RequestDispatcher rd = request.getRequestDispatcher("index.html");
   rd.forward(request, response);
     
  }
  }}
