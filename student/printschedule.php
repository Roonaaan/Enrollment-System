<?php 
require_once ("../include/initialize.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>University of Caloocan City</title>

     <!-- Bootstrap Core CSS -->
 <link href="<?php echo web_root; ?>css/bootstrap.min.css" rel="stylesheet">
 
    <!-- Custom Fonts -->
    <link href="<?php echo web_root; ?>font/css/font-awesome.min.css" rel="stylesheet" type="text/css">

  <link href="<?php echo web_root; ?>font/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- DataTables CSS -->
    <link href="<?php echo web_root; ?>css/dataTables.bootstrap.css" rel="stylesheet">
 
     <!-- datetime picker CSS -->
<link href="<?php echo web_root; ?>css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
 
 <link href="<?php echo web_root; ?>css/modern.css" rel="stylesheet">
 <link href="<?php echo web_root; ?>css/costum.css" rel="stylesheet">
  <body onload="window.print();">

  <div class="row">
        <div class="col-xs-12">
          <h4 class="page-header">
            <i class="fa fa-user"></i> Student Information
            <small class="pull-right">Date: <?php echo date('m/d/Y'); ?></small>
          </h4>
        </div>
        <!-- /.col -->
      </div> 
      <?php
      $sem = new Semester();
      $resSem = $sem->single_semester();
      $_SESSION['SEMESTER'] = $resSem->SEMESTER; 


      $currentyear = date('Y');
      $nextyear =  date('Y') + 1;
      $sy = $currentyear .'-'.$nextyear;
      $_SESSION['SY'] = $sy;


      $student = New Student();
      $stud = $student->single_student($_SESSION['IDNO']);

      ?>
      <table>
        <tr>
          <td width="75%" colspan="2" >
            <address>
            <b>Name : <?php echo $stud->LNAME. ', ' .$stud->FNAME .' ' .$stud->MNAME;?></b><br>
            Address : <?php echo $stud->HOME_ADD;?><br> 
            Contact No.: <?php echo $stud->CONTACT_NO;?><br>
            
          </address>
          </td>
          <td >
             <b>Course:  <?php 

            $course = New Course();
            $singlecourse = $course->single_course($stud->COURSE_ID);
            echo $_SESSION['COURSE_YEAR'] = $singlecourse->COURSE_NAME;
            $_SESSION['COURSEID'] =$stud->COURSE_ID;
            ?></b><br>
          <b>Semester : <?php echo $_SESSION['SEMESTER']; ?></b> <br/>
          <b>Academic Year : <?php echo $_SESSION['SY']; ?></b>
          </td>
        </tr>
      </table>

  <div class="row">
    <h1  align="center">Registration Form</h1>
    <hr/>
  </div>
  <form action="controller.php?action=delete" Method="POST">  
			      <div class="table-responsive">			
				<table id="example" class="table table-striped table-bordered table-hover table-responsive" style="font-size:12px" cellspacing="0">
				
				  <thead>
				  	<tr>
				  	<th>#</th>
				  		 <th>
				  		  Subject</th>
				  		<th>Description</th> 
				  		<th>Unit</th> 
				  		<th>Year Level</th>		 
				  	</tr>	
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
					
				</table>
 
				<!-- <div class="btn-group">
				  <a href="index.php?view=add" class="btn btn-default">New</a>
				  <button type="submit" class="btn btn-default" name="delete"><span class="glyphicon glyphicon-trash"></span> Delete Selected</button>
				</div>
 -->
			</div>
				</form>
                      
  </body>
</html>