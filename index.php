<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Login - <?php include('dist/includes/title.php'); ?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

  <!-- Font Awesome -->
  <link href="bootstrap/fontawesome/css/fontawesome.css" rel="stylesheet" />
  <link href="bootstrap/fontawesome/css/all.css" rel="stylesheet" />
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->

<body class="hold-transition login-page">




  <!-- ADD THE HOME botton. -->

  <!-- HOME botton back to Staff login -->
  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container">
        <div class="navbar-header" style="padding-left:0px">
          <a href="../index.php" class="navbar-brand"><b><i class="glyphicon glyphicon-home"></i> HOME </b></a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>


      </div><!-- /.container-fluid -->
    </nav>
  </header>


  <div class="login-box">
    <div class="login-logo">
      <b>Sales & Credit Mgt System</b>
    </div><!-- /.login-logo -->
    <div class="login-box-body">
      <p class="login-box-msg">Signin to start your session</p>
      <form action="login.php" method="post">
        <div class="form-group has-feedback">
          <input type="text" class="form-control" placeholder="Username" name="username" required>
          <span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="password" class="form-control" placeholder="Password" name="password" required>
          <!-- removed by rex
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            -->
          <!-- trying fontawsome -->
          <!-- <i class="fa fa-desktop"></i> -->
          <span class="fa fa-unlock form-control-feedback"></span>

        </div>
        <div class="form-group has-feedback">
          <select class="form-control select2" style="width:100%" name="branch" required>
            <?php
            include('dist/includes/dbcon.php');

            $query3 = mysqli_query($con, "select * from branch order by branch_name") or die(mysqli_error($con));
            while ($row3 = mysqli_fetch_array($query3)) {
            ?>
              <option value="<?php echo $row3['branch_id']; ?>"><?php echo $row3['branch_name']; ?></option>
            <?php } ?>
          </select>
        </div>
        <div class="row">
          <div class="col-xs-6 pull-right">
            <button type="reset" class="btn btn-block btn-flat">Clear</button>
          </div><!-- /.col -->
          <div class="col-xs-6 pull-right">
            <button type="submit" class="btn btn-primary btn-block btn-flat" name="login" default>Sign In</button>
          </div><!-- /.col -->



          <!-- Administrator botton goto to admin login page -->
          <div class="col-xs-6 pull-right">
            <!-- i change manage to Admin -->
            <a href="admin\index.php" class="btn btn-primary btn-block btn-flat">Admin</button></a>
          </div><!-- /.col -->
          <!-- /.col **Just added by rex** -->

        </div>
      </form>



    </div><!-- /.login-box-body -->
  </div><!-- /.login-box -->



  <!-- jQuery 2.1.4 -->
  <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
  <!-- Bootstrap 3.3.5 -->
  <script src="bootstrap/js/bootstrap.min.js"></script>
  <!-- SlimScroll -->
  <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
  <!-- FastClick -->
  <script src="plugins/fastclick/fastclick.min.js"></script>
  <!-- AdminLTE App -->
  <script src="dist/js/app.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="dist/js/demo.js"></script>
</body>

</html>