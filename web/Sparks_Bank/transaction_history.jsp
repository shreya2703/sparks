<%-- 
    Document   : transaction_history
    Created on : 13 Jun, 2021, 7:24:15 PM
    Author     : hp
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="icon" href="favicon/favicon (4).ico">
    <title>Transaction History</title>
    <style>
        th,td{
  padding:15px;
}
.user-details{
  padding-bottom: 4%;
}
.head{
  background-color:  #39a9cb;
  color:white;
  font-size: 1rem;
}
.body{
  font-size: 1rem;
  font-family: serif;
}
    </style>

    <!--css stylesheet-->
    <link rel="stylesheet" href="css/transaction-history.css">

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
                  <a class="nav-link" href="http://localhost:8084/Bank/Sparks_Bank/user.jsp">User</a>
              </li>
          </ul>
      </div>
      </nav>

    </div>
    </section>

    <h3>Transaction History</h3>
 
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
       rs=smt.executeQuery("select t_id,sender_name,reciever_name,amount from transaction");
      
       
%>
    <section id="table">
      <div class="user-details">
    
       <table border="1" style="width:80%" class="center" >
         <thead class="head">
           <tr>
             <th>Transaction ID</th>
             <th>Sender's Name</th>
             <th>Reciever's Name</th>
            <th>Amount</th>
           </tr>
         </thead>
         <tbody class="body">
             <%
              while(rs.next())
              {
                  String id=rs.getString("t_id");
                  String sname=rs.getString("sender_name");
                  String rname=rs.getString("reciever_name");
                  String bal=rs.getString("amount");
             %>
            <tr>
             <td><%=id%></td>
                 
             <td><%=sname%></td>
             <td><%=rname%></td>
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

