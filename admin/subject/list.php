<?php
	 if (!isset($_SESSION['ACCOUNT_ID'])){
      redirect(web_root."admin/index.php");
     }

?>
<form action="" method="POST">
<div class="row">
      <div class="col-lg-12">
       	 <div class="col-lg-8">
            <h2 class="page-header">List of Subjects per Course <a href="index.php?view=add" class="btn btn-primary btn-xs  ">  <i class="fa fa-plus-circle fw-fa"></i> New</a>  </h2>
       		</div>
       		<div class="col-lg-4" >
       			<img style="float:right;" src="<?php echo web_root; ?>img/ucc.png" >
       		</div>
       		</div>
   		 </div>
	 		    
		<div class="row invoice-info">
      		<div class="col-sm-6 invoice-col">
      		</div>
			  <div class="col-sm-4 invoice-col">
    Course and Year
    <address>
        <div class="form-group">
            <form method="post" action="index.php">
                <select name="course" class="form-control">
				<?php 
                        $mydb->setQuery("SELECT * FROM `course` ");
                        $courses = $mydb->loadResultList();

                        foreach ($courses as $result) {
                            $selected = ($_POST['course'] == $result->COURSE_ID) ? 'selected' : '';
                            echo '<option value="'.$result->COURSE_ID.'" '.$selected.'>'.$result->COURSE_NAME.'</option>';
                        }
                    ?>
                </select>
            </form>
        </div>
    </address>
</div>

        <div class="col-sm-2 invoice-col"> 
        <br/>
        	<address>
        		<div class="form-group"> 
        			<button type="submit" name="submit" class="btn btn-primary">Submit</button>
		  		</div>		  
        	</address>
        </div>
      	<br />	
			<div class="row">
        		<div class="col-xs-12">
          			<h2 class="page-header">
						<small class="pull-right"> 
                 
				 		</small>
					</h2>
        		</div> 
      		</div> 
			<div class="row">
        		<div class="col-xs-12 col-md-12 table-responsive">
          			<table class="table table-bordered table-striped" style="font-size:11px" cellspacing="0" >
            			<thead>
            				<tr>
              					<th>ID</th>
             					<th>Subject</th> 
              					<th>Description</th>
              					<th>Unit</th> 
              					<th>Pre-Requisite</th>
              					<th>Course</th>
              					<th width="10%">Semester</th>

            				</tr>
            			</thead>
            		<tbody>
						<?php
                			$tot = 0;
							if(isset($_POST['submit']) && isset($_POST['course'])){           
                				$sql ="SELECT * FROM `course` sy, `subject`  s 
                        		WHERE sy.`COURSE_ID`=s.`COURSE_ID`";

                				$mydb->setQuery($sql);
                				$res = $mydb->executeQuery();
                				$row_count = $mydb->num_rows($res);
                				$cur = $mydb->loadResultList();
               
                  			if ($row_count > 0){
                    			foreach ($cur as $result) {			
              			?>
									<tr> 
                        				<td><?php echo $result->SUBJ_ID;?></td>
                        				<td><?php echo $result->SUBJ_CODE;?></td>
                        				<td><?php echo $result->SUBJ_DESCRIPTION;?></td>
                        				<td><?php echo $result->UNIT;?></td>
                        				<td><?php echo $result->PRE_REQUISITE;?></td>                        				
                        				<td><?php echo $result->COURSE_NAME;?></td>
										<td><?php echo $result->SEMESTER;?></td>
										
              						<?php  
                        				$tot =  count($cur);
										echo '<td align="center" > <a title="Edit" href="index.php?view=edit&id='.$result->SUBJ_ID.'"  class="btn btn-primary btn-xs  ">  <span class="fa fa-edit fw-fa"></span></a>
				  					 		<a title="Delete" href="controller.php?action=delete&id='.$result->SUBJ_ID.'" class="btn btn-danger btn-xs" ><span class="fa fa-trash-o fw-fa"></span> </a>
				  					 		</td>';
				  						echo '</tr>';		 
																			
								} 

							} 	
							
			   			}
						
									?>
			  		</tbody>
					</table>
        		</div>
      		</div>
		<div class="clearfix"></div>
</div>
</form> 