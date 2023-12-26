 

  <!-- Projects Row -->
  <div class="row">
    <div class="col-md-12">
    <ul>
      <?php
      require_once ("include/initialize.php");
      $sql ="SELECT * FROM `course` WHERE `DEPT_ID`=" .$_POST['id'];
      $mydb->setQuery($sql);

              $cur = $mydb->loadResultList();

            foreach ($cur as $result) {
         ?>
          <li><?php echo $result->COURSE_NAME ?></li>

         <?php  
          }
      ?>
      </ul>
    </div>
  </div>
    <!-- /.row -->
