<?php

if (isset($_POST['btnCartSubmit'])) {
  # code...
  $query = "SELECT * FROM tblstudent s, course c WHERE s.COURSE_ID=c.COURSE_ID AND IDNO=".$_SESSION['IDNO'];
            $result = mysqli_query($mydb->conn,$query) or die(mysqli_error($mydb->conn));
            $row = mysqli_fetch_assoc($result);

$sql = "SELECT sum(UNIT) as 'Unit' FROM subject WHERE COURSE_ID =".$row['COURSE_ID']." AND SEMESTER='" .$_SESSION['SEMESTER']."'";
$result = mysqli_query($mydb->conn,$sql) or die(mysqli_error($mydb->conn));
$totunits = mysqli_fetch_assoc($result);



$totunit =0;

            $query = "SELECT * FROM tblstudent s, course c WHERE s.COURSE_ID=c.COURSE_ID AND IDNO=".$_SESSION['IDNO'];
            $result = mysqli_query($mydb->conn,$query) or die(mysqli_error($mydb->conn));
            $row = mysqli_fetch_assoc($result);

            $query = "SELECT * 
                      FROM `subject` s, `course` c WHERE s.COURSE_ID=c.COURSE_ID
                      AND COURSE_NAME='".$row['COURSE_NAME']."' AND COURSE_LEVEL=".$row['YEARLEVEL']."
                      AND  SEMESTER ='".$_SESSION['SEMESTER']."' AND
                      NOT FIND_IN_SET(  `PRE_REQUISITE` , ( 
                      SELECT GROUP_CONCAT(SUBJ_CODE SEPARATOR ',') FROM tblstudent s,grades g,subject sub
                      WHERE s.IDNO=g.IDNO AND g.SUBJ_ID=sub.SUBJ_ID 
                      AND  s.IDNO =" .$_SESSION['IDNO'].")
                      )";

                $mydb->setQuery($query);
                $cur = $mydb->loadResultList(); 
                foreach ($cur as $result) {  
                   $totunit +=  $result->UNIT ;
                }
 
            if (isset( $_SESSION['gvCart'])){ 

             $count_cart = count($_SESSION['gvCart']);

                for ($i=0; $i < $count_cart  ; $i++) {  

                    $query = "SELECT * FROM `subject` s, `course` c 
                    WHERE s.COURSE_ID=c.COURSE_ID AND SUBJ_ID=" . $_SESSION['gvCart'][$i]['subjectid'];
                     $mydb->setQuery($query);
                     $cur = $mydb->loadResultList(); 
                      foreach ($cur as $result) {   
                           $totunit +=  $result->UNIT ;
                      }  
                }
  
              } 


    if ($totunit > $totunits['Unit']) {
      # code...
    message("Warning....! Your total units have exceeded, ".$totunits['Unit'] ." units are only allowed to taken.","error");
    redirect("index.php?q=cart"); 
    } 
}



?>
<form action="index.php?q=payment" method="POST">
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
 <!-- Main content -->
 <?php   //check_message();  ?> 
    <section class="invoice">
      <!-- title row -->
      <div class="row">
        <div class="col-xs-12">
          <h3 class="page-header">
            <i class="fa fa-user"></i> Student Information
            <small class="pull-right">Date: <?php echo date('m/d/Y'); ?></small>
          </h3>
        </div>
      </div>
      <div class="row invoice-info">
        <div class="col-sm-8 invoice-col"> 
          <address>
            <b>Name : <?php echo $_SESSION['LNAME']. ', ' .$_SESSION['FNAME'] .' ' .$_SESSION['MI'];?></b><br>
            Address : <?php echo $_SESSION['PADDRESS'];?><br> 
            Contact No.: <?php echo $_SESSION['CONTACT'];?><br>
            
          </address>
        </div>
    
        <div class="col-sm-4 invoice-col">
          <b>Course/Year:  <?php 
            $course = New Course();
            $singlecourse = $course->single_course($_SESSION['COURSEID']);
            $_SESSION['Course_name'] = $singlecourse->COURSE_NAME;

          if (isset($_SESSION['STUDID'])) {
            
               $_SESSION['COURSELEVEL'] = $singlecourse->COURSE_LEVEL ;
          }elseif(isset($_SESSION['IDNO'])){
             $stud = New Student();
              $singleStud = $stud->single_student($_SESSION['IDNO']);
              $_SESSION['COURSELEVEL'] = $singleStud->YEARLEVEL ;
          }
        

           

            echo $_SESSION['COURSE_YEAR'] = $singlecourse->COURSE_NAME;
           
            ?></b><br>
          <b>Semester : <?php echo $_SESSION['SEMESTER']; ?></b> <br/>
          <b>Academic Year : <?php echo $_SESSION['SY']; ?></b>
        </div>

      </div>

      <div class="row">
        <div class="col-xs-12">
          <h3 class="page-header">
            <i class="fa fa-book"></i> List of Subjects

          </h3>

      </div>
 

<div class="row">
  <div class="col-xs-12 table-responsive">
    <table class="table table-striped">
      <thead>
      <tr> 
        <th>Id</th>
        <th>Subject</th>
        <th>Description</th>
        <th>Unit</th>  
      </tr>
      </thead>
      <tbody>
      <?php

      $query = "SELECT * FROM tblstudent s, course c WHERE s.COURSE_ID=c.COURSE_ID AND IDNO=".$_SESSION['IDNO'];
      $result = mysqli_query($mydb->conn,$query) or die(mysqli_error($mydb->conn));
      $row = mysqli_fetch_assoc($result);

      if ($row['student_status']=='New') {
        # code...
            $totunit = 0;

            $query = "SELECT * 
                      FROM `subject` s, `course` c WHERE s.COURSE_ID=c.COURSE_ID
                      AND COURSE_NAME='".$row['COURSE_NAME']."' AND COURSE_LEVEL=".$row['YEARLEVEL']."
                      AND  SEMESTER ='".$_SESSION['SEMESTER']."' AND
                      NOT FIND_IN_SET(  `PRE_REQUISITE` , ( 
                      SELECT GROUP_CONCAT(SUBJ_CODE SEPARATOR ',') FROM tblstudent s,grades g,subject sub
                      WHERE s.IDNO=g.IDNO AND g.SUBJ_ID=sub.SUBJ_ID
                      AND  s.IDNO =" .$_SESSION['IDNO'].")
                      )";

                $mydb->setQuery($query);
                $cur = $mydb->loadResultList(); 
                foreach ($cur as $result) { 

                  echo '<tr>';
                  // echo '<td width="5%" align="center"></td>';
                  echo '<td>' . $result->SUBJ_ID.'</a></td>';
                  echo '<td>'. $result->SUBJ_CODE.'</td>';
                  echo '<td>'. $result->SUBJ_DESCRIPTION.'</td>';
                  echo '<td>' . $result->UNIT.'</a></td>';
                   
                  echo '</tr>';
                   $totunit +=  $result->UNIT ;
                }



          if (isset($_SESSION['gvCart'])){


             $count_cart = count($_SESSION['gvCart']);

                for ($i=0; $i < $count_cart  ; $i++) {  

                    $query = "SELECT * FROM `subject` s, `course` c WHERE s.COURSE_ID=c.COURSE_ID AND SUBJ_ID=" . $_SESSION['gvCart'][$i]['subjectid'];
                     $mydb->setQuery($query);
                     $cur = $mydb->loadResultList(); 
                      foreach ($cur as $result) { 

                         echo '<tr>';
                          // echo '<td width="5%" align="center"></td>';
                          echo '<td>' . $result->SUBJ_ID.'</a></td>';
                          echo '<td>'. $result->SUBJ_CODE.'</td>';
                          echo '<td>'. $result->SUBJ_DESCRIPTION.'</td>';
                          echo '<td>' . $result->UNIT.'</a></td>';
                          echo '</tr>';

                        
                        
                          $totunit +=  $result->UNIT; 
                      }  
                        
                }  
              } 

      }else{
          $totunit = '';
          $mydb->setQuery("SELECT * FROM `subject` s, `course` c 
          WHERE s.COURSE_ID=c.COURSE_ID AND CONCAT(`COURSE_NAME` ,  '-',  `COURSE_LEVEL` ) ='".$_SESSION['COURSE_YEAR']."' AND SEMESTER='".$_SESSION['SEMESTER']."'");

          $cur = $mydb->loadResultList();

          foreach ($cur as $result) {
          echo '<tr>';
          echo '<td>'.$result->SUBJ_ID.'</td>';
          echo '<td>'.$result->SUBJ_CODE.'</td>'; 
          echo '<td>'.$result->SUBJ_DESCRIPTION.'</td>';
          echo '<td>'.$result->UNIT.'</td>';
          echo '</tr>';

          $totunit +=  $result->UNIT;
          }
      }
      
          ?>
           <tr>
            <td colspan="3" align="right" >Total Units</td>
            <td><?php echo $totunit;?></td>
            </tr> 
      </tbody>
     </table>  
 
   <div class="row">
        <!-- accepted payments column -->
        <div class="col-xs-6">
          <p class="lead">Tuition:</p>
        <p class="lead">

          <?php

           $subtot = '';
           $perunit = 0;
           $entrancefee = 320;
           $totsem = 0;

           $subtot = $totunit * $perunit;
           $totsem = $entrancefee + $subtot;
           echo$totunit .' x ' . ' &#8369 ' . $perunit . ' =  &#8369 ' . $subtot ; 


           $_SESSION['SUBTOT'] = $subtot;
           $_SESSION['ENTRANCEFEE'] = $entrancefee;
           $_SESSION['TOTSEM'] = $totsem;
           $_SESSION['TOTUNIT'] = $totunit;
           ?> 
          </p>
          

          <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
           Description : This is the formula of amount per unit and its total.
          </p>
        </div>

        <div class="col-xs-6">


         <br/>
         <br/>
          <div class="table-responsive">
            <table class="table">
              <tr>
                <th style="width:50%">Tuition Fees:</th>
                <td>  &#8369 <?php echo  $subtot; ?></td>
              </tr>
              <tr>
                <th>Miscellaneous Fee</th>
                <td> &#8369 <?php echo  $entrancefee  ; ?></td>
              </tr>

              <tr>
                <th>Total Semester:</th>
                <td> &#8369 <?php echo  $totsem; ?>
                <input type="hidden" id="totsem" name="totsem" value="<?php echo  $totsem; ?>">
                </td>
              </tr>
              <?php
              $student = New Student();
              $result = $student->single_student($_SESSION['IDNO']);

              if ($result->student_status=='New' || $result->student_status=='Irregular' || $result->student_status=='Regular') { 
              ?>
              <tr>
                <th>Partial Payment:</th>
                <td> &#8369 <input type="text" id="PartialPayment" autocompete="false" name="PartialPayment" required="true"></td>
              </tr>
              <tr>
                <th>Balance:</th>
                <td> &#8369 <span id="Balance">0.00</span>
                <input type="hidden" id="txtBalance" name="txtBalance" value="">
                </td>
              </tr>
              <?php
                }
              ?>
            </table>
          </div>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <!-- this row will not appear when printing -->
      <div class="row no-print">
        <div class="col-xs-9">
          <a href="statementaccnt.php" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
          <a href="index.php?q=profile" target="_blank" class="btn btn-default"><i class="fa fa-user"></i> Go to your profile</a>
         <!--  <button type="hidden" name="submit" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> Submit Payment
          </button> -->
      </div>
      <div class="col-xs-3">
         </form>
         <?php
          if ($result->student_status=='New' || $result->student_status=='Irregular' || $result->student_status=='Regular') { 
         ?>
          <form method="post" action="https://www.sandbox.paypal.com/cgi-bin/webscr">
           <input type="hidden" value="sb-01j8u28917912@business.example.com" name="business">
          <!-- Specify a Buy Now button. -->
          <input type="hidden" value="_xclick" name="cmd">
          <input type="hidden" value="Partial Payments" name="item_name">
          <input type="hidden" id="partial" value="320" name="amount">
          <input type="hidden" name="currency_code" value="PHP">
          <input type="hidden" name="return" value="http://localhost<?php echo web_root ?>index.php?q=payment">
          <input type="hidden" name="cancel_return" value="http://localhost<?php echo web_root ?>index.php">
          <!-- Display the payment button. -->
          <input type="image" name="submit" id="btnpay" height="80%" width="80%" border="none" src="img/pay.png">
          </form> 
          <?php
}
          ?>
        </div>
      </div>
    </section> 
    <!-- /.content -->
    <div class="clearfix"></div>
  </div>

