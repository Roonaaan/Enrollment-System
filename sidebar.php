<!-- search -->  
<!-- <div class="panel panel-default">
    <div class="panel-body">
     <form action="index.php?q=product" method="post">
       <div class="input-group custom-search-form">
            <input type="search" class="form-control" name="search" placeholder="Search for...">
            <span class="input-group-btn">
                <button class="btn btn-default" id="btnsearch" name="btnsearch" type="submit">
                    <i class="fa fa-search"></i>
                </button>
            </span>
        </div>
    </form>

    </div> 
</div> -->
<!-- end serch -->


<!-- login -->
<?php 
if(!isset($_SESSION['IDNO'])){

?>
 <div class="panel panel-default">
    <div class="panel-body">
        <div class="well well-sm"  style="background-color:#242424; color:#f5f5f5; border: 1px solid #53118F "><b >  Login </b> </div>

            <form class="form-horizontal span6" action="login.php" method="POST">
                <div class="form-group">
                  <div class="col-md-12">
                    <label class="control-label" for=
                    "U_USERNAME">Username:</label> 
                          <input   id="U_USERNAME" name="U_USERNAME" placeholder="Username" type="text" class="form-control input" >  
                  </div> 
 
                  <div class="col-md-12">
                    <label class="control-label" for=
                    "U_PASS">Password:</label> 
                     <input name="U_PASS" id="U_PASS" placeholder="Password" type="password" class="form-control input ">
             
                  </div> 
                  </div>
                  <div class="form-group">
                  <div class="col-md-12"> 
                    <button type="submit" id="sidebarLogin" name="sidebarLogin"  style="background-color:#242424; color:#f5f5f5; border: 1px solid #53118F ;" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-logged-in "></span>   Login</button> 
                     
                  </div>
                </div>


            </form>

        </div> 
</div>
<?php } ?>
 