<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
if(empty($_SESSION['branch'])):
header('Location:../index.php');
endif;
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home | <?php include('../dist/includes/title.php');?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrap/midcss/midix_animation.css">
    <link rel="stylesheet" href="../bootstrap/fontawesome/css/all.min.css">
    <link href="../bootstrap/css/layoutpage.css" rel="stylesheet" />
    <link href="../bootstrap/css/preloaders.css" rel="stylesheet" />
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../plugins/select2/select2.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
    <style>
      .col-lg-3{
        margin:50px 0px;
      }
      
    </style>
 </head>
  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
  <body class="hold-transition skin-<?php echo $_SESSION['skin'];?> layout-top-nav" onload="myFunction()">
    <div class="wrapper">
      <?php include('../dist/includes/header.php');?>
      <!-- Full Width Column -->
      <div class="content-wrapper">
        <div class="container" >
          <!-- Content Header (Page header) -->
         

          <!-- Main content -->
          <section class="content">
            <div class="row">
	      <div class="col-md-8">
              <div class="box box-primary">
                <div class="box-header with-border">
                 
                <?php
                $id=$_SESSION['id'];
                $query=mysqli_query($con,"select * from user where user_id='$id'")or die(mysqli_error($con));
                $row=mysqli_fetch_array($query);


                // trying to great user base on time base
                // timezone
                // Rex
                date_default_timezone_set ('UTC');
                // $timezone = date ("e");
                // setting the time to be 24 hourswithout o
              //  
                $Hour = date('H');
                if ($Hour >= 5 && $Hour <= 11) {
                  $greetings = "Good Morning,";
                }else if ($Hour >= 12 && $Hour <= 17) {
                  $greetings ="Good Aternoon, ";
                }else if ($Hour >= 18 && $Hour <= 20) {
                  $greetings ="Good Evening, ";
                }else {
                  $greetings ="Go to bed, ";
                }
                ?>               
                 
                  <h3 class="text-left" style="margin-top:1px"><b> <?php echo $greetings ?> <?php echo $row['name'];?> </h3>
                  <!-- <h3 class="box-title" >Transactions</h3> -->
                  </div><!-- /.box-header -->
                

                <!-- tryin new code  Rex-->
              <!-- <div style="margin-top:1px" >
                <h3 class="text-left" style="margin-top:1px"><b> WELCOME, <?php echo $branch_name;?> </b></h3>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                  <i class="fa fa-bars"></i>
                </button>
              </div> -->






                <div class="box-body">
                  <div class="row">
                      <div class="col-lg-4 col-xs-6"> <!-- small box only for purchase -->
                        <!-- small box only for purchase -->

                        <!-- help us -->
                          
                        <div class="small-box bg-blue">
                          <div class="inner">
                          <!-- Modified Line Rex 001-->
                            <a href="cust_new.php" class="bg-green">
                            <h3>Purchase</h3>
                            <p>Cash</p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="fa fa-money-check-alt fa-1x spinpulse midix_hover infinite"></i>
                          </div>
                          <a href="cust_new.php" class="small-box-footer">
                            Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                      </div><!-- ./col -->


                      <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-purple">
                          <div class="inner">
                          <!-- Modified Line Rex 001-->
                          <a href="stockin.php" class="bg-red">
                            <h3>Stock</h3>
                            <p>Products</p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="glyphicon glyphicon-share-alt fa-1x flip midix_hover infinite"></i>
                          </div>
                          <a href="stockin.php" class="small-box-footer">
                            Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                      </div><!-- ./col -->
                      
                      <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-aqua">
                          <div class="inner">
                          <!-- Modified Line Rex 001-->
                          <a href="customer.php" class="bg-yellow">
                            <h3>Payment</h3>
                            <p>Customer</p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="fa fa-cash-register fa-1x tada midix_hover infinite"></i>
                          </div>
                          <a href="customer.php" class="small-box-footer">
                            Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                      </div><!-- ./col -->
                      <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-red">
                          <div class="inner">
                          <!-- Modified Line Rex 001-->
                          <a href="creditor.php" class="bg-red">
                            <h3>Credit</h3>
                            <p>Apply</p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="fa fa-money-check-edit-alt fa-1x wobble midix_hover infinite"></i>
                          </div>
                          <a href="creditor.php" class="small-box-footer">
                            Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                      </div><!-- ./col -->

                      <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-olive">
                          <div class="inner">
                          <!-- Modified Line Rex 001-->
                          <a href="product.php" class="bg-orange">
                            <h3>Products</h3>
                            <p>View/Add</p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="glyphicon glyphicon-shopping-cart fa-1x jello midix_hover infinite"></i>
                          </div>
                          <a href="product.php" class="small-box-footer">
                            Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                      </div><!-- ./col -->


                      


                      <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-light-blue">
                          <div class="inner">
                          <!-- Modified Line Rex 001-->
                          <a href="sales.php" class="bg-red">
                            <h3>Report</h3>
                            <p>Sales</p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="fa fa-list-alt fa-1x shake midix_hover infinite"></i>
                          </div>
                          <a href="stockin.php" class="small-box-footer">
                            Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                      </div><!-- ./col -->



                  </div><!--row-->
                  
      
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col (right) -->
            
        <div class="col-md-4">

              
              <!-- About Me Box -->
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">About Us</h3>
                </div><!-- /.box-header -->
    <?php
    $branch=$_SESSION['branch'];
    $query=mysqli_query($con,"select * from branch where branch_id='$branch'")or die(mysqli_error($con));
      $row=mysqli_fetch_array($query);
      
?>
                <div class="box-body">
                  <strong><i class="glyphicon glyphicon-map-marker margin-r-5"></i> Company Address</strong>
                  <p class="text-muted">
                    <?php echo $row['branch_address'];?>
                  </p>

                  <hr>

                  <strong><i class="glyphicon glyphicon-phone-alt margin-r-5"></i> Contact Number's</strong>
                  <p class="text-muted"><?php echo $row['branch_contact'];?></p>

                  <hr>

                  
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>   
			
			
          </div><!-- /.row -->
	  
            


          <section class="content">
            <div class="row">
	      <div class="col-md-8">
              <div class="box box-primary">
                <div class="box-header with-border">
                 
                  <?php 
                  

                  // <h3 class="text-left" style="margin-top:1px">Welcome</h3>
                  // <!-- <h3 class="box-title" >Transactions</h3> -->
                  $file ="quote.txt";
                  $quotes = file($file);
                  srand ((double)microtime()*1000000);
                  $randomquote = rand(0,count($quotes)-1);
                  echo $quotes[$randomquote];



                  ?>
                  
                  </div><!-- /.box-header -->







          </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
      <?php include('../dist/includes/footer.php');?>
    </div><!-- ./wrapper -->
	<script>
    $(function() {
      $(".btn_delete").click(function(){
      var element = $(this);
      var id = element.attr("id");
      var dataString = 'id=' + id;
      if(confirm("Sure you want to delete this item?"))
      {
	$.ajax({
	type: "GET",
	url: "temp_trans_del.php",
	data: dataString,
	success: function(){
		
	      }
	  });
	  
	  $(this).parents(".record").animate({ backgroundColor: "#fbc7c7" }, "fast")
	  .animate({ opacity: "hide" }, "slow");
      }
      return false;
      });

      });
    </script>
	
	<script type="text/javascript" src="autosum.js"></script>
  
    <!-- jQuery 2.1.4 -->
    <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script src="../dist/js/jquery.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script src="../plugins/select2/select2.full.min.js"></script>
    <!-- SlimScroll -->
    <script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="../plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js"></script>
    <script src="../plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
    
    <script>
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });
      });
    </script>
     <script>
      $(function () {
        //Initialize Select2 Elements
        $(".select2").select2();

        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
        //Money Euro
        $("[data-mask]").inputmask();

        //Date range picker
        $('#reservation').daterangepicker();
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
        //Date range as a button
        $('#daterange-btn').daterangepicker(
            {
              ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
              },
              startDate: moment().subtract(29, 'days'),
              endDate: moment()
            },
        function (start, end) {
          $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
        );

        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
          checkboxClass: 'icheckbox_minimal-blue',
          radioClass: 'iradio_minimal-blue'
        });
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
          checkboxClass: 'icheckbox_minimal-red',
          radioClass: 'iradio_minimal-red'
        });
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
          checkboxClass: 'icheckbox_flat-green',
          radioClass: 'iradio_flat-green'
        });

        //Colorpicker
        $(".my-colorpicker1").colorpicker();
        //color picker with addon
        $(".my-colorpicker2").colorpicker();

        //Timepicker
        $(".timepicker").timepicker({
          showInputs: false
        });
      });
    </script>
  </body>
</html>
