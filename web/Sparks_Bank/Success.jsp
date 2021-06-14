<%-- 
    Document   : Success
    Created on : 13 Jun, 2021, 6:08:06 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Transaction Successful</title>
    <style>
      #form{
        margin-top:3%;
        margin-bottom:2%;
      }
      .navbar{
        padding:0 0 4.5rem;

      }

      .navbar-brand{
        font-family: serif;
        font-size: 2rem;
        font-weight: bold;
      }

      .nav-item{
        font-family: serif;
        padding: 0 18px;
      }
.nav-link{
        font-size: 1.2rem;
      }

      #footer{
        padding-top: 2%;
        padding-bottom: 2%;
        text-align: center;
        color: black;
        background-color: #dbe6fd ;
      }

      .social-icon{
        margin: 20px 10px;
      }

      #title{
        background-color: #dbe6fd;
      }
      #form{
        text-align: center;
        padding-left: 30%;
        padding-top: 1%;
        padding-bottom: 2%;
      }

      .card-img-top{

        max-height: 140px;
        max-width: 140px;
        text-align: center;
        display: inline;
      }

      .input-form{
        margin-bottom: 10px;
      }
      label{
        display: inline-block;
        width:150px;
      }
      .download-button{
        display: inline-block;
        margin: 5% 10% 5% 10% ;
      }
       @media (max-width:1028px){
         #title{
           text-align: center;
         }
         #form{
           text-align: center;
           padding-left: 30%;
           padding-top: 1%;
         }
       }
 h3{
         padding-top: 2%;
         font-size: 2rem;
         text-align: center;
       }
       .inner{
         overflow: hidden;
       }

       .inner img{
         transition: all 1.5s ease;
       }

       .inner:hover img{
         transform: scale(1.5);
       }
    </style>

    

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
      <nav class="navbar  navbar-expand-lg navbar-light ">
      <a class="navbar-brand" href="index.html">Bank</a>
           <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                  <a class="nav-link" href="index.html">Home</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="user.html">User</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="http://localhost:8084/Bank/Sparks_Bank/transaction_history.jsp">Transaction History</a>
              </li>
          </ul>
      </div>
      </nav>

    </div>
    </section>

<!--card-->

    <section id="form">
      <div class="card text-white bg-info mb-3 shadow" style="width:60%">
        <div class="card-header inner">
          <img class="card-img-top" src="Sparks_Bank/images/tick.jpg" alt="tick image">
        </div>
        <div class="card-body">
          <h3>Transaction Successfull!!</h3>
          <p>
            Your transaction has been performed successfully.
            </p>
            <a href="http://localhost:8084/Bank/Sparks_Bank/transaction_history.jsp"><button class="btn btn-lg  btn-outline-light download-button" type="button">Transaction History</button></a>

        </div>

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



