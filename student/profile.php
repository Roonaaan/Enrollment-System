<?php  
 if (!isset($_SESSION['IDNO'])){
      redirect("index.php");
     }


    $student = New Student();
    $res = $student->single_student($_SESSION['IDNO']);

    $course = New Course();
    $resCourse = $course->single_course($res->COURSE_ID);
	?>
    
  <style type="text/css">
  #img_profile{
    width: 100%;
    height:auto;
  }
    #img_profile >  a > img {
    width: 100%;
    height:auto;
}


  </style>
  		<div class="col-sm-3">
 
          <div class="panel">            
            <div id="img_profile" class="panel-body">
            <a href="" data-target="#myModal" data-toggle="modal" >
            <img title="profile image" class="img-hover"   src="<?php 
            if (empty($res->STUDPHOTO)) {
              echo web_root . 'student/student_image/ava.jpg'; 
            } else {
              echo web_root . 'student/' . $res->STUDPHOTO;
            }
            ?>">
            </a>
             </div>
          <ul class="list-group  ">
               <li class="list-group-item text-right"><span class="pull-left"><strong>Name</strong></span> <?php echo $res->FNAME .' '.$res->LNAME; ?> </li>
              <li class="list-group-item text-right"><span class="pull-left"><strong>Course</strong></span> <?php echo $resCourse->COURSE_NAME . ' - '.$resCourse->COURSE_LEVEL;?> </li>
               <li class="list-group-item text-right"><span class="pull-left"><strong>Status</strong></span> <?php echo $res->student_status; ?> </li>
               
            
          </ul> 
                
        </div>
    </div>
         

<div class="col-sm-9"> 

<div class="panel">            
  <div class="panel-body">
   <?php
       check_message();   
       ?>
  <ul class="nav nav-tabs" id="myTab">
  <li class="active"><a href="#home" data-toggle="tab">Registration Form</a></li> 
    <li><a href="#grades" data-toggle="tab">Enrolled Subjects</a></li>
    <?php 
    if ($res->student_status=='Irregular' || $res->student_status=='Transferee' && $res->NewEnrollees==0) {

    ?>
    <?php 
    }
    ?>
    <li><a href="#settings" data-toggle="tab">Update Account</a></li>
  </ul>
              
  <div class="tab-content">
    <div class="tab-pane active" id="home">
    <br/>
    <div class="col-md-12">
    <h3>Registration Form</h3> 
    </div>
      <div class="table-responsive" style="margin-top:5%;"> 
      <form action="customer/controller.php?action=delete" Method="POST">  					
            				<table  class="table table-striped table-bordered table-hover "  style="font-size:12px" cellspacing="0"  > 
            				  <thead>
            				  	<tr> 
                          <th>Subject</th>
                          <th>Unit</th>
                          <th>Description</th>  
            				  </thead> 	 
            			  <tbody>
                    <?php
                    $sql ="SELECT * 
                    FROM  tblstudent st, studentsubjects ss, `subject` sub
                    WHERE  st.IDNO=ss.IDNO AND ss.`SUBJ_ID` = sub.`SUBJ_ID`
                    AND st.STUDSECTION=ss.LEVEL  
                    AND ss.`IDNO`=" .$_SESSION['IDNO']." AND LEVEL='".$res->STUDSECTION."'
                    AND sub.SEMESTER = '".$_SESSION['SEMESTER']."' AND LEVEL='".$resCourse->COURSE_LEVEL."'";

                      $mydb->setQuery($sql);
                      $cur = $mydb->loadResultList();

                      foreach ($cur as $result) {
                        echo '<tr>';
				  		echo '<td>'. $result->SUBJ_CODE.'</td>';
              echo '<td>' . $result->UNIT.'</a></td>'; ; 
				  		echo '<td>'. $result->SUBJ_DESCRIPTION.'</td>';
              echo '</tr>';
                      }
                    ?> 
            				</tbody>
            					<!-- <footer>
                        <tr>
                          <td colspan="7"><a class="btn btn-primary btn-sm" href="">Print</a></td>
                        </tr>     
                      </footer> -->
            				 	
            				</table>
                     
            		 </form>
                  <form action="student/printschedule.php" method="POST" target="_blank">
                <input type="hidden" name="Course" value="<?php echo $resCourse->COURSE_LEVEL; ?>">
                <!-- this row will not appear when printing -->
                    <div class="row no-print">
                      <div class="col-xs-12">
                       <span class="pull-right"> <button type="submit" name="submit" class="btn btn-primary"  ><i class="fa fa-print"></i> Print</button></span>  
                    </div>
                    </div> 
                  </form>       
         
              </div><!--/table-resp-->
               
             </div><!--/tab-pane-->
            <div class="tab-pane" id="grades">
         
              <?php require_once  ("studentgrades.php"); ?>

            </div>
             <div class="tab-pane" id="settings">
    		 
              <?php require_once  ("updateyearlevel.php"); ?>
          
       
            </div><!--/tab-pane-->
  </div><!--/tab-content-->
 </div>
</div><!--/col-9--> 
</div>





          <div class="modal fade" id="myModal" tabindex="-1">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button class="close" data-dismiss="modal" type=
                  "button">×</button>

                  <h4 class="modal-title" id="myModalLabel">Choose Image.</h4>
                </div>

                <form action="student/controller.php?action=photos" enctype="multipart/form-data" method=
                "post">
                  <div class="modal-body">
                    <div class="form-group">
                      <div class="rows">
                        <div class="col-md-12">
                          <div class="rows">
                            <div class="col-md-8">
                              <input name="MAX_FILE_SIZE" type=
                              "hidden" value="1000000"> <input id=
                              "photo" name="photo" type=
                              "file">
                            </div>

                            <div class="col-md-4"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type=
                    "button">Close</button> <button class="btn btn-primary"
                    name="savephoto" type="submit">Upload Photo</button>
                  </div>
                </form>
              </div>
            </div>
          </div>

          