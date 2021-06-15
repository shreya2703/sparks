/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyServlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
public class InsertData extends HttpServlet {
    static int count=0;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection con=null;
        PreparedStatement smt=null;
        try{
       Class.forName("com.mysql.jdbc.Driver").newInstance();

        //(2) Establishing connection with database
con=DriverManager.getConnection
    ("jdbc:mysql://localhost:3306/sparks","root","root");

        //(3) Creating statment object 
       smt=con.prepareStatement("insert into transaction values(?,?,?,?,?,?)");
       
       //(4) Executing query
 String s_id=request.getParameter("senderid");
 String r_id=request.getParameter("recieverid");
 String s_name=request.getParameter("sendername");
 String r_name=request.getParameter("recievername");
 String amt=request.getParameter("amount");
 count++;
 String id="t"+count;
  //String t_id=request.getParameter("transactionid");
 smt.setString(1,id);
 smt.setString(2,s_name);
 smt.setString(3,r_name);
 smt.setString(4,amt);
 smt.setString(5,s_id);
 smt.setString(6,r_id);
       smt.executeUpdate();
       
       // (5) closing connection
       smt.close();
       con.close();
       RequestDispatcher rd=request.getRequestDispatcher("/Sparks_Bank/Success.jsp");
       rd.forward(request,response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(InsertData.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(InsertData.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(InsertData.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(InsertData.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
    }

    

    
