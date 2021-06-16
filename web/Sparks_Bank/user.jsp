<%-- 
    Document   : user
    Created on : 13 Jun, 2021, 5:09:07 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="icon" href="favicon/favicon (5).ico">
    <title>User Detail</title>

    <!--css stylesheet-->
    <link rel="stylesheet" href="css/user.css">

    <!-- font awesome -->
    <script src="https://kit.fontawesome.com/8f292731f0.js" crossorigin="anonymous"></script>

    <!--Bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  </head>
  <body>

    <section id="title">
   <div class="container">


      <!-- Nav Bar -->
      <nav class="navbar  navbar-expand-lg navbar-dark ">
      <a class="navbar-brand" href="/Bank/index.html">Bank</a>
           <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                  <a class="nav-link" href="/Bank/index.html">Home</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="transaction.html">Transaction</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="http://localhost:8084/Bank/Sparks_Bank/transaction_history.jsp">Transaction History</a>
              </li>
          </ul>
      </div>
      </nav>

    </div>
    </section>

    <!--Table-->
<% 
Connection con=null;
Statement smt=null;
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();

        //(2) Establishing connection with database
con=DriverManager.getConnection
    ("jdbc:mysql://localhost:3306/sparks","root","root");

        //(3) Creating statment object 
       smt=con.createStatement();
       rs=smt.executeQuery("select * from customer");
      
       
%>
    <section id="table">
      <div class="user-details">
    <h3>USER INFORMATION</h3>
       <table border="1" style="width:80%" class="center" >
         <thead class="head">
           <tr>
             <th>Customer-ID</th>
             <th>Customer Name</th>
             <th>EMAIL ID</th>
            <th>BALANCE</th>
           </tr>
         </thead>
         <tbody class="body">
             <%
              while(rs.next())
              {
                  String id=rs.getString("c_id");
                  String name=rs.getString("c_name");
                  String email=rs.getString("email_id");
                  String bal=rs.getString("balance");
             %>
            <tr>
             <td><%=id%></td>
                 
             <td><%=name%></td>
             <td><%=email%></td>
             <td><%=bal%></td>
           </tr>
        <%
        
              }
        %>
         </tbody>
       </table>

      </div>
    </section>


    <!-- Contact us-->
    <footer id="footer">
      <i class="social-icon fab fa-twitter"></i>
      <i class="social-icon fab fa-facebook-f"></i>
      <i class="social-icon fas fa-envelope"></i>
      <p>© Copyright 2021 Sparks Bank</p>
    </footer>

  </body>
</html>
