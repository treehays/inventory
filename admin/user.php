
<?php include 'header.php';?>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
       <?php include 'main_sidebar.php';?>

        <!-- top navigation -->
       <?php include 'top_nav.php';?>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main"> 
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class = "col-md-4 col-lg-4 col-xs-4">
						<?php include 'add_user_form.php';?>
					</div>
					<div class = "col-md-8 col-lg-8 col-xs-8">
						<div class = "x-panel">
						 <table id="datatable" class="table table-striped table-bordered table-responsive">
							 <thead>
								<tr>
									<th>Fullname</th>
									<th>Branch Name</th>
									<th>Username</th>
									<th>Password</th>
									<th>Status</th>
									<th>Action</th>									
								</tr>
							 </thead>
							 <tbody>
									<?php	
									include 'dbcon.php';								
										$query1=mysqli_query($con,"select * from user NATURAL JOIN branch ORDER BY user_id ASC")or die(mysqli_error($con));
										while ($row=mysqli_fetch_array($query1)){
											$id=$row['user_id'];
											
									?>  
								<tr>
									<td><?php echo $row['name'];?></td>
									<td><?php echo $row['branch_name'];?></td>
									<td><?php echo $row['username'];?></td>
									<td>****</td>
									<td><?php echo $row['status'];?></td>
									<td>
										<a href="#update<?php echo $id;?>" class="btn btn-success btn-xs" data-toggle = "modal" data-target="#update<?php echo $id;?>"><i class = "fa fa-pencil"></i> Edit</a>
										
									</td>
																
								</tr>
										<?php include 'update_user_modal.php';?>
								<?php }?>
							 </tbody>								
						 </table>
						</div>
					</div>
				</div>
			</div>
        </div>		
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
		  Hypermarket Manag. System <a href="#"></a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

	<?php include 'datatable_script.php';?>
    <!-- /gauge.js -->
  </body>
</html>
