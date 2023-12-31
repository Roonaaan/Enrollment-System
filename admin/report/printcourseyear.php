<?php
require_once("../../include/initialize.php");
  if(!isset($_SESSION['ACCOUNT_ID'])){
  redirect(web_root."admin/index.php");
}
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>University of Caloocan City</title>

  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link href="<?php echo web_root; ?>admin/css/bootstrap.min.css" rel="stylesheet">

    <link href="<?php echo web_root; ?>admin/css/metisMenu.min.css" rel="stylesheet">

    <link href="<?php echo web_root; ?>admin/css/timeline.css" rel="stylesheet">

    <link href="<?php echo web_root; ?>admin/css/sb-admin-2.css" rel="stylesheet">


 
   <link href="<?php echo web_root; ?>admin/css/morris.css" rel="stylesheet">


    <link href="<?php echo web_root; ?>admin/font/css/font-awesome.min.css" rel="stylesheet" type="text/css">

  <link href="<?php echo web_root; ?>admin/font/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link href="<?php echo web_root; ?>admin/css/dataTables.bootstrap.css" rel="stylesheet">
 

<link href="<?php echo web_root; ?>css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
 <link href="<?php echo web_root; ?>css/datepicker.css" rel="stylesheet" media="screen">
 
 <link href="<?php echo web_root; ?>admin/css/costum.css" rel="stylesheet">
</head>
<body onload="window.print();">
<div class="wrapper">
  <section class="invoice">
    <div class="row">
      <div class="col-xs-12">
        <h4 class="page-header ">
        University of Caloocan City
           <small class="pull-right">Printed Date: <?php echo date('m/d/Y'); ?></small>
        </h4>
      </div>

    </div>
    <div class="row"><h2 align="center">List Of Students Enrolled per Program/Course and per Year</h2>
    <h5 align="center"><?php echo isset($_POST['Course']) ? "Course/Year :". $_POST['Course']: ''; ?></h5></div>

          <table class="table table-bordered  table-striped" style="font-size:11px" cellspacing="0" >
            <thead>
            <tr>
              <th>Id</th>
              <th>Name</th> 
              <th>Address</th>
              <th>Sex</th> 
              <th>AGE</th>
              <th>Contact No.</th>
              <th>Civil Status</th>
              <th>Course/Year</th>
              <th>Status</th>
            </tr>
            </thead>
            <tbody>
            <?php
                $tot = 0; 
          
            
                 $sql ="SELECT * FROM `schoolyr` sy, `tblstudent`  s ,`course` c 
                        WHERE sy.`IDNO`=s.`IDNO` AND s.`COURSE_ID`=c.`COURSE_ID` 
                        AND CONCAT(`COURSE_NAME`,'-',`COURSE_LEVEL`) LIKE '%" . $_POST['Course'] ."%'";

                $mydb->setQuery($sql);
                $res = $mydb->executeQuery();
                $row_count = $mydb->num_rows($res);
                $cur = $mydb->loadResultList();
               
                  if ($row_count > 0){
                    foreach ($cur as $result) {
                      $dbirth =  date($result->BDAY);
                      $today = date('Y-M-d'); 
              ?>
                      <tr> 
                        <td><?php echo $result->IDNO;?></td>
                        <td><?php echo $result->FNAME . ' ' .  $result->MNAME . '  ' .  $result->LNAME;?></td>
                        <td><?php echo $result->HOME_ADD;?></td>
                        <td><?php echo $result->SEX;?></td>
                        <td><?php echo  date_diff(date_create($dbirth),date_create($today))->y;?></td>
                        <td><?php echo $result->CONTACT_NO;?></td>
                        <td><?php echo $result->STATUS;?></td>
                        <td><?php echo $result->COURSE_NAME .'-'.$result->COURSE_LEVEL;?></td>
                        <td><?php echo $result->student_status;?></td>
                      </tr>
              <?php  
                         $tot =  count($cur);
                        
                    } 
                
            }
            
              ?>
            </tbody>
              <tfoot>
              <tr>
                <td colspan="8" align="right"><h2>Total Number of Student/s : </h2></td><td><h2><?php echo   $tot ; ?></h2></td>
              </tr>
            </tfoot>
          </table> 

  </section>

</div>

</body>
</html>
