<?php include 'header_login.php';?>

  <body class="login">
   



<!-- HOME botton back to Staff login -->
  <header class="main-header">
        <nav class="navbar navbar-static-top">
          <div class="container">
            <div class="navbar-header" style="padding-left:20px">
              <a href="../index.php" class="navbar-brand"><b><i class="glyphicon glyphicon-home"></i> HOME </b></a>
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                <i class="fa fa-bars"></i>
              </button>
            </div>

           
          </div><!-- /.container-fluid -->
        </nav>
      </header>












    <div>
    

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form method = "POST" action = "login.php">
              <h1>Administrator Login Page</h1>
              <div>
                <input type="text" name = "username" class="form-control" placeholder="Username" required="true" />
              </div>
              <div>
                <input type="password" name = "password" class="form-control" placeholder="Password" required="true" />
              </div>
              <div>
                <button  class="btn btn-block btn-warning" name = "login"> Log in</button>
              
              </div>

              <div class="clearfix"></div>

              <div class="separator">
               

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Hypermarket Manag. System </h1>
                  <p>©2020 All Rights Reserved FukuSci16com0089  Kashere.</p>
                </div>
              </div>
            </form>
          </section>
        </div>

    
      </div>
    </div>
  </body>
</html>
