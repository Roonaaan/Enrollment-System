<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title><?php echo $title; ?> | University of Caloocan City - North</title>

 <link href="<?php echo web_root; ?>css/bootstrap.min.css" rel="stylesheet">
 
    <link href="<?php echo web_root; ?>font/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    <link href="<?php echo web_root; ?>css/dataTables.bootstrap.css" rel="stylesheet">
 

<link href="<?php echo web_root; ?>css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
 
 <link href="<?php echo web_root; ?>css/modern.css" rel="stylesheet">
 <link href="<?php echo web_root; ?>css/costum.css" rel="stylesheet">

  <link href="<?php echo web_root; ?>css/ekko-lightbox.css" rel="stylesheet">
 <style type="text/css">

.p {

  color: white;
   margin-bottom: 0;
  margin-top: 0;
  list-style: none;
}

.p > a { 
  color: white;
  margin-bottom: 0;
  margin: 0;
  padding: 0;
  text-decoration:none;
  background-color:  #0000FF;
}
.p > a:hover ,
.p > a:focus {
   color: black; 
   text-decoration:none;
   background-color: #2d52f2;
}


 
.title-logo  {
    color:black;
    text-decoration:none;
    font-size: 42px;
    font-family: "broadway";
    padding: 0;
    margin: 0;
    top: 0;
  
  }
.title-logo:hover {
  color: orange; 
  text-decoration:none;
  transition: color 2s ease;
}
.carttxtactive {
  color: red;
  font-style: bold;
  box-shadow: red;

}
.carttxtactive:hover {
   color: white;
}

.menu  li {
  left: 0px;
  width: 150px;
  padding: 0 3px 0 3px;
  text-align: center;
 
}

</style>

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

<body style="Pbackground-color:#e0e4e5" >

<div class="navbar-fixed-top navbar-TOPsm  col-md-10    col-md-offset-1"    role="navigation">
  <div class="container">
    <div class="navbar-header">
          <h5 class="navbar-menu p" >University of Caloocan City | North</h5>
         <button type="button" class="navbar-toggle btn-xs p" data-toggle="collapse" data-target=".smMenu">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button> 
    </div>
      <div  class="collapse navbar-collapse  smMenu "> 

        <ul class="navbar-nav p navbar-left tooltip-demo" style="margin-left:-8%;"> 
            <li class="dropdown dropdown-toggle ">
              <a  data-toggle="tooltip" data-placement="left" title="Contact Us"   href="<?php echo web_root.'index.php?q=contact';  ?>"> 
               <i class="fa fa-phone fa-fw"> </i>  Call Us: +632-3106581 / +632-3106855 OR Email Us: admin@ucc-caloocan.edu.ph
              </a>
            </li>
            <li><span>    ||    </span></li>
            <li>
             <a  data-toggle="tooltip" data-placement="bottom" title="Academic Year" ><i class="fa fa-calendar-o"></i> Academic Year - <?php echo $_SESSION['SY'] ; ?></a>
            </li> 
             <li><span>    ||    </span></li>
           <li>
            <a  data-toggle="tooltip" data-placement="bottom" title="Semester" > <?php echo $_SESSION['SEMESTER'] . ' Semester';?></a>
           </li>
          </ul>
          <ul class="navbar-nav p navbar-right ">

            <?php if (isset($_SESSION['IDNO']) ){  

              $student = New Student();
              $singlestudent = $student->single_student($_SESSION['IDNO']);

              if ($singlestudent->student_status=='New') {
                # code...
        
            ?> 
             <li class="dropdown dropdown-toggle tooltip-demo">
              <a   data-toggle="tooltip" data-placement="bottom"  title="Subject to be taken"  href="<?php echo web_root.'index.php?q=cart';  ?>"> 
               <i class="fa fa-shopping-cart fa-fw"> </i> <?php echo  isset($cart) ? $cart : "(0)" ; ?> 
              </a>
            </li> 
            <?php
              }
            ?> 
            <li class="dropdown  dropdown-toggle">
               <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                  <i class="fa fa-user fa-fw"></i>
                    <?php echo $singlestudent->FNAME. ' ' . $singlestudent->LNAME ; ?>
                  <i class="caret"> </i> 
               </a>

                  <ul class="dropdown-menu dropdown-acnt"> 
                    <li><a title="Edit" href="<?php echo web_root; ?>index.php?q=profile"  >My Profile</a></li> 
                    <li> <a  href="logout.php">Logout</a></li>  
                  </ul> 
            </li>  
 
          <?php  } else{?>
          <li  class="tooltip-demo"><a data-toggle="tooltip" data-placement="left" title="Enrol Now" href="<?php echo web_root.'index.php?q=enrol'; ?>">Enroll Now!</a></li>
          <?php } ?>

        </ul>
      </div>

  </div>
</div>


  <div class="col-md-10 col-md-offset-1 " > 

   <div class="col-md-4">
    <div class="row "> 
     <p > 
        <a  class="title-logo"  href="<?php echo web_root; ?>index.php" title="">
        <h1 align="center" >University of Caloocan City | North</h1>
        </a>
    </p>
       
     </div>   
    </div>
    <div class="col-md-8">
     <div class="row ">
        <?php include 'banner.php'; ?>
     </div>  
    </div>

   </div>

 <div class="navbar navbar-static-top navbar-magbanua col-md-10    col-md-offset-1 "    role="navigation">
    
      <div class="container ">
        <div class="navbar-header"> 
            <div class="navbar-menu p" >Menu</div>
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".bigMenu">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button> 

        </div>
<?php
  
  ?>
        <div class="collapse navbar-collapse bigMenu"  > 
          <ul class="nav navbar-nav menu" style="margin-left:-4%;"    > 

            <li class="dropdown dropdown-toggle <?php echo (isset($_GET['q']) && $_GET['q']=='') ? "active" : false;?> ">
              <a href="<?php echo web_root.'index.php'; ?>">Home</a>
            </li>
            <li class="dropdown-toggle <?php echo (isset($_GET['q']) && $_GET['q']=='department') ? "active" : false;?>" >
              <a href="<?php echo web_root.'index.php?q=department'; ?>">Department</a>
            </li>
            
            <li class="dropdown-toggle <?php echo (isset($_GET['q']) && ($_GET['q']=='enrol' || $_GET['q']=='subject')) ? "active" : false;?>" >
              <a href="<?php echo web_root.'index.php?q=enrol'; ?>">Enroll Now!</a>
            </li>
 
             <li class="dropdown-toggle <?php echo (isset($_GET['q']) && $_GET['q']=='contact') ? "active" : false;?>">
              <a href="<?php echo web_root.'index.php?q=contact';  ?>">Contact Us</a>
            </li> 
           <li class="dropdown-toggle <?php echo (isset($_GET['q']) && $_GET['q']=='about') ? "active" : false;?> ">
             <a href="<?php echo web_root.'index.php?q=about';  ?>"> 
               About Us
             </a>
          </li>
          
          </ul>           
        </div> 

    </div> 

  </div> 


  
<div class="col-md-10 col-md-push-1 "> 

   
  <?php  check_message(); ?> 
  
        <div class="row"> 
          <div id="page-wrapper">
               <?php

          if($title=='Profile'){
                echo ' <div class="row">';

                require_once $content;
                echo ' </div><br/>';
     
              }else{
?>


            <div class="row">
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
            <footer class="panel-footer" style="background-color:#242424; color:#f5f5f5; border: 1px solid #53118F">
              <p align="left" >&copy; University of Caloocan City | North</p>
           </footer>
      </div>

  </div>  

 <div class="modal fade" id="myOrdered">
 </div>

  <script src="<?php echo web_root; ?>jquery/jquery.min.js"></script>


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


 if (partial >= 1600) {
  return true;
 }else{


  alert("invalid payment. Minimum of 1600 pesos in-order to enroll.");
  return false;
 };



   
}); 
</script>
</body>
</html>