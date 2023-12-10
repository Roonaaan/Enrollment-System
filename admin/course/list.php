<?php
	 if (!isset($_SESSION['ACCOUNT_ID'])){
      redirect(web_root."admin/index.php");
     }

?>
 <div class="row">
      <div class="col-lg-12">
       	 <div class="col-lg-6">
            <h1 class="page-header">List of Courses  <a href="index.php?view=add" class="btn btn-primary btn-xs  ">  <i class="fa fa-plus-circle fw-fa"></i> New</a>  </h1>
       		</div>
       		<div class="col-lg-6" >
       			<img style="float:right;" src="<?php echo web_root; ?>img/ucc.png" >
       		</div>
       		</div>
        	<!-- /.col-lg-12 -->
   		 </div>
	 		    <form action="controller.php?action=delete" Method="POST">  
			      <div class="table-responsive">			
				<table id="dash-table" class="table table-striped table-bordered table-hover table-responsive" style="font-size:12px" cellspacing="0">
				
				  <thead>
				  	<tr>
				  		<th>Course Id</th>
				  		<th>Course</th>
				  		<th>Major</th> 

				  		<th>Description</th>
				  		<th>Department</th>
				  		<th width="10%" >Action</th>
				 
				  	</tr>	
				  </thead>     <!-- `COURSE_NAME`, `COURSE_LEVEL`, ``, `COURSE_DESC`, `DEPT_ID` -->
              
				  <tbody>
				  	<?php 

				  		// $mydb->setQuery("SELECT * 
								// 			FROM  `tblusers` WHERE TYPE != 'Customer'");
				  		$mydb->setQuery("SELECT * 
											FROM  `course` c, `department` d WHERE c.DEPT_ID=d.DEPT_ID");
				  		$cur = $mydb->loadResultList();

						foreach ($cur as $result) {

							


				  		echo '<tr>';
				  		echo '<td >' . $result->COURSE_ID.'</td>';
				  		echo '<td>' . $result->COURSE_NAME.'</a></td>';
				  		echo '<td>'. $result->COURSE_MAJOR.'</td>';
				  		echo '<td>'. $result->COURSE_DESC.'</td>'; 
				  		echo '<td>'. $result->DEPARTMENT_NAME.'</td>';

				  		echo '<td align="center" > <a title="Edit" href="index.php?view=edit&id='.$result->COURSE_ID.'"  class="btn btn-primary btn-xs  ">  <span class="fa fa-edit fw-fa"></span></a>
				  					 <a title="Delete" href="controller.php?action=delete&id='.$result->COURSE_ID.'" class="btn btn-danger btn-xs" ><span class="fa fa-trash-o fw-fa"></span> </a>
				  					 </td>';
				  		echo '</tr>';
				  	} 
				  	?>
				  </tbody>
					
				</table>
 
				<!-- <div class="btn-group">
				  <a href="index.php?view=add" class="btn btn-default">New</a>
				  <button type="submit" class="btn btn-default" name="delete"><span class="glyphicon glyphicon-trash"></span> Delete Selected</button>
				</div>
 -->
			</div>
				</form>
	

</div> <!---End of container-->