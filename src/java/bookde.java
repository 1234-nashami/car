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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.swing.JFrame;
import javax.swing.JOptionPane;


public class bookde extends HttpServlet {
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
       PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
 
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
    
  if (n.isEmpty() || a.isEmpty() || d.isEmpty()|| h.isEmpty()|| w.isEmpty()|| s.isEmpty()|| da.isEmpty()|| t.isEmpty()|| p.isEmpty()|| e.isEmpty()) {
   RequestDispatcher r = request.getRequestDispatcher("AddPrice.jsp");
   out.println("<font color=red> All the fields are required, Please fill them</font>");
   r.include(request, response);
  } else {
  
            try {
                  Connection con;
                  String driver = "org.apache.derby.jdbc.ClientDriver";
                  con = DriverManager.getConnection("jdbc:derby://localhost:1527/car","unni","12345");
                  Statement st=con.createStatement();
                  int i= st.executeUpdate("insert into book(name,address,destination,home,way,street, data,time,card,expirt) values('"+n+"','"+a+"','"+d+"','"+h+"','"+w+"','"+s+"','"+da+"','"+t+"','"+p+"','"+e+"')");
            } catch (SQLException ex) {
                Logger.getLogger(bookde.class.getName()).log(Level.SEVERE, null, ex);
            }
            
  }
    }
}
            