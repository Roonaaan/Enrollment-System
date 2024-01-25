<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>University of Caloocan City</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="img/ucc.png" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<?php echo web_root; ?>css/styles.css" rel="stylesheet" />
        <link href="<?php echo web_root; ?>css/bootstrap.min.css" rel="stylesheet">
        <link href="<?php echo web_root; ?>font/css/font-awesome.min.css" rel="stylesheet" type="text/css">
      

        <?php 
$sem = new Semester();
$resSem = $sem->single_semester();
$_SESSION['SEMESTER'] = $resSem->SEMESTER; 
?>
 <?php
if (isset($_SESSION['gvCart'])){
  if (count($_SESSION['gvCart'])>0) {
    $cart = '<span class="carttxtactive">('.count($_SESSION['gvCart']) .')</span>';
  } 
 
} 
$currentyear = date('Y');
  $nextyear =  date('Y') + 1;
  $sy = $currentyear .'-'.$nextyear;
  $_SESSION['SY'] = $sy;
 ?>
 
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="img/UCC.png" height="50px"> University of Caloocan City</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                      <li class="nav-item <?php echo (isset($_GET['q']) && $_GET['q']=='') ? "active" : false;?> ">
                        <a class="nav-link active" aria-current="page"href="<?php echo web_root.'index.php'; ?>">Home</a>
                      </li>
                      <li class="nav-item <?php echo (isset($_GET['q']) && ($_GET['q']=='enrol' || $_GET['q']=='subject')) ? "active" : false;?>" >
                        <a class="nav-link active" aria-current="page" href="<?php echo web_root.'index.php?q=enrol'; ?>">Enroll Now!</a>
                      </li>
                      <li class="nav-item <?php echo (isset($_GET['q']) && $_GET['q']=='about') ? "active" : false;?> ">
                        <a class="nav-link active" aria-current="page" href="<?php echo web_root.'index.php?q=about';  ?>">About Us</a>
                      </li>
                      <?php if (isset($_SESSION['IDNO']) ){  

$student = New Student();
$singlestudent = $student->single_student($_SESSION['IDNO']);

if ($singlestudent->student_status=='New' || $singlestudent->student_status=='Regular' || $singlestudent->student_status=='Regular') {
  # code...

?> 
<li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" id="navbarDropdown" data-toggle="tooltip" data-placement="bottom"  title="Subject to be taken"  href="<?php echo web_root.'index.php?q=cart';  ?>"> 
 <i class="fa fa-shopping-cart fa-fw"> </i> <?php echo  isset($cart) ? $cart : "(0)" ; ?> 
</a>
</li> 
<?php
}
?> 
<li class="nav-item dropdown">
 <a class="nav-link dropdown-toggle" id="navbarDropdown" data-toggle="dropdown" href="#" aria-expanded="false">
    <i class="fa fa-user fa-fw"></i>
      <?php echo $singlestudent->FNAME. ' ' . $singlestudent->LNAME ; ?>
    <i class="caret"> </i> 
 </a>

    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown"> 
      <li><a class="dropdown-item" title="Edit" href="<?php echo web_root; ?>index.php?q=profile"  >My Profile</a></li> 
      <li> <a class="dropdown-item"href="logout.php">Logout</a></li>  
    </ul> 
</li>  


<?php  } else{?>
<li  class="nav-item"><a class="nav-link active" aria-current="page" data-toggle="tooltip" data-placement="left" title="Enrol Now" href="<?php echo web_root.'index.php?q=enrol'; ?>">Log In</a></li>
<?php } ?>
                        
                    </ul>
                </div>
            </div>
        </nav>

        <div class="col-md-10 col-md-push-1 "> 

   
  <?php  check_message(); ?> 
  
        <div class="row"> 
          <div id="page-wrapper">
               <?php

          if($title=='Profile'){
                

                require_once $content;
                
     
              }else{
?>


            
              <div class="col-lg-8">
                <div class="panel panel-default">
                  <div class="panel-heading" style="background-color:#242424; color:#f5f5f5; border: 1px solid #53118F">
                  <b><?php   
                  echo  $title . (isset($_GET['category']) ?  '  |  ' .$_GET['category'] : '' )?> </b> 
                  </div>
                  <div class="panel-body">
                 
                    <?php require_once $content; ?>
           
                     
                  </div>

              </div>
          </div> 
          
           <div class="col-lg-4">
          
                  <?php 
                  require_once "sidebar.php";
                  
                
                    ?>
             </div>
        </div>
        
        <?php }

?>
       </div>
      </div>
  </div>  
  

 <div class="modal fade" id="myOrdered">
 </div>
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="<?php echo web_root; ?>jquery/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="<?php echo web_root; ?>js/scripts.js"></script>
  <script src="<?php echo web_root; ?>js/bootstrap.min.js"></script>
  <script type="text/javascript" language="javascript" src="<?php echo web_root; ?>input-mask/jquery.inputmask.js"></script> 
  <script type="text/javascript" language="javascript" src="<?php echo web_root; ?>input-mask/jquery.inputmask.date.extensions.js"></script> 
  <script type="text/javascript" language="javascript" src="<?php echo web_root; ?>input-mask/jquery.inputmask.extensions.js"></script> 


  <script src="<?php echo web_root; ?>js/jquery.dataTables.min.js"></script>
  <script src="<?php echo web_root; ?>js/dataTables.bootstrap.min.js"></script>
  <script src="<?php echo web_root; ?>js/ekko-lightbox.js"></script>

  <script type="text/javascript" src="<?php echo web_root; ?>js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
  <script type="text/javascript" src="<?php echo web_root; ?>js/locales/bootstrap-datetimepicker.uk.js" charset="UTF-8"></script>


  <script type="text/javascript" language="javascript" src="<?php echo web_root; ?>js/janobe.js"></script> 
<script>

    

   
    $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});

    $("[data-mask]").inputmask();


    $('.tooltip-demo').tooltip({
        selector: "[data-toggle=tooltip]",
        container: "body"
    })


    $("[data-toggle=popover]")
        .popover()
    </script>


      <script>
        $('.carousel').carousel({
            interval: 5000
        })
    </script>

<script type="text/javascript">


$('#date_picker').datetimepicker({
  format: 'mm/dd/yyyy',
    language:  'en',
    weekStart: 1,
    todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 2,
    minView: 2,
    forceParse: 0
    });

 
 
 
function validatedate(){ 
 
 

    var todaysDate = new Date() ;

    var txtime =  document.getElementById('ftime').value

    var tprice = document.getElementById('alltot').value 
    var pmethod = document.getElementById('paymethod').value
    var onum = document.getElementById('ORDERNUMBER').value

     
     var mytime = parseInt(txtime)  ;
     var todaytime =  todaysDate.getHours()  ;
       if (txtime==""){
     alert("You must set the time enable to submit the order.")
     }else 
     if (mytime<todaytime){ 
        alert("Selected time is invalid. Set another time.")
      }else{
        window.location = "index.php?page=7&price="+tprice+"&time="+txtime+"&paymethod="+pmethod+"&ordernumber="+onum; 
      }
  }
</script>  


    <script type="text/javascript">
  $('.form_curdate').datetimepicker({
        language:  'en',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
  $('.form_bdatess').datetimepicker({
        language:  'en',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
</script>
<script>
 


  function checkall(selector)
  {
    if(document.getElementById('chkall').checked==true)
    {
      var chkelement=document.getElementsByName(selector);
      for(var i=0;i<chkelement.length;i++)
      {
        chkelement.item(i).checked=true;
      }
    }
    else
    {
      var chkelement=document.getElementsByName(selector);
      for(var i=0;i<chkelement.length;i++)
      {
        chkelement.item(i).checked=false;
      }
    }
  }
   function checkNumber(textBox){
        while (textBox.value.length > 0 && isNaN(textBox.value)) {
          textBox.value = textBox.value.substring(0, textBox.value.length - 1)
        }
        textBox.value = trim(textBox.value);
      }
      //
      function checkText(textBox)
      {
        var alphaExp = /^[a-zA-Z]+$/;
        while (textBox.value.length > 0 && !textBox.value.match(alphaExp)) {
          textBox.value = textBox.value.substring(0, textBox.value.length - 1)
        }
        textBox.value = trim(textBox.value);
      }
  

       
  </script>     
<script type="text/javascript" > 

$(document).on("click", "#load", function () {
  
   
   var depid = $(this).data("id");
   
     $.ajax({   
        type:"POST",  
        url: "menu1.php",    
        dataType: "text", 
        data:{id:depid},               
        success: function(data){                    
         $('#loaddata'+ depid).html(data); 
          

        }

    }); 

  
}); 
</script>
<script type="text/javascript" > 

$(document).on("keyup", "#PartialPayment", function () {

   
   var totsem = document.getElementById("totsem").value;
   var partial = document.getElementById("PartialPayment").value;
   var bal;

   document.getElementById("partial").value = partial;

   bal = parseFloat(totsem) - parseFloat(partial);

   document.getElementById("Balance").innerHTML = bal.toFixed(2);
   document.getElementById("txtBalance").innerHTML = bal.toFixed(2);
   
}); 
</script>
<script type="text/javascript" > 

$(document).on("click", "#btnpay", function () {

   
 var partial = document.getElementById("PartialPayment").value;
 
Session.set("PartialPayment", partial);
 

Session.get("PartialPayment");


 if (partial >= 320) {
  return true;
 }else{


  alert("invalid payment. Minimum of 320 pesos in-order to enroll.");
  return false;
 };



   
}); 
</script>

    </body>
</html>
