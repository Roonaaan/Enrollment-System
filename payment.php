<?php

@$IDNO = $_SESSION['STUDID'];
$COURSEID = $_SESSION['COURSEID'];
$COURSELEVEL = $_SESSION['COURSELEVEL'];
$SEMESTER = $_SESSION['SEMESTER'];
$TOTUNITS = $_SESSION['SUBTOT'];
$ENTRANCEFEE = $_SESSION['ENTRANCEFEE'];
$TOTSEM = $_SESSION['TOTSEM'];



$query = "SELECT * FROM tblstudent s, course c WHERE s.COURSE_ID=c.COURSE_ID AND IDNO=" . $_SESSION['IDNO'];
$result = mysqli_query($mydb->conn, $query) or die(mysqli_error($mydb->conn));
$row = mysqli_fetch_assoc($result);

if ($row['student_status'] == 'New') {

	$query = "SELECT * 
		      FROM `subject` s, `course` c WHERE s.COURSE_ID=c.COURSE_ID
		      AND COURSE_NAME='" . $row['COURSE_NAME'] . "' AND COURSE_LEVEL=" . $row['YEARLEVEL'] . "
		      AND  SEMESTER ='" . $_SESSION['SEMESTER'] . "' AND
		      NOT FIND_IN_SET(  `PRE_REQUISITE` , ( 
		      SELECT GROUP_CONCAT(SUBJ_CODE SEPARATOR ',') FROM tblstudent s,grades g,subject sub
		      WHERE s.IDNO=g.IDNO AND g.SUBJ_ID=sub.SUBJ_ID 
		      AND  s.IDNO =" . $_SESSION['IDNO'] . ")
		      )";

	$mydb->setQuery($query);
	$cur = $mydb->loadResultList();
	foreach ($cur as $result) {

		$studentsubject = new StudentSubjects();
		$studentsubject->IDNO 		= $_SESSION['IDNO'];
		$studentsubject->SUBJ_ID	= $result->SUBJ_ID;
		$studentsubject->LEVEL 		= $_SESSION['COURSELEVEL'];
		$studentsubject->SEMESTER 	= $_SESSION['SEMESTER'];
		$studentsubject->SY 		= $_SESSION['SY'];
		$studentsubject->ATTEMP 	= 1;
		$studentsubject->create();

	}

	if (isset($_SESSION['gvCart'])) {
		# code... 
		$count_cart = count($_SESSION['gvCart']);

		for ($i = 0; $i < $count_cart; $i++) {

			$query = "SELECT * FROM `subject` s, `course` c WHERE s.COURSE_ID=c.COURSE_ID AND SUBJ_ID=" . $_SESSION['gvCart'][$i]['subjectid'];
			$mydb->setQuery($query);
			$cur = $mydb->loadResultList();
			foreach ($cur as $result) {

				$studentsubject = new StudentSubjects();
				$studentsubject->IDNO 		= $_SESSION['IDNO'];
				$studentsubject->SUBJ_ID	= $result->SUBJ_ID;
				$studentsubject->LEVEL 		= $_SESSION['COURSELEVEL'];
				$studentsubject->SEMESTER 	= $_SESSION['SEMESTER'];
				$studentsubject->SY 		= $_SESSION['SY'];
				$studentsubject->ATTEMP 	= 1;
				$studentsubject->create();

			}
		}
	}
} else {



	$sql = "SELECT * FROM course WHERE COURSE_NAME='" . $_SESSION['Course_name'] . "' AND COURSE_LEVEL =" . $_SESSION['COURSELEVEL'];
	$result = mysqli_query($mydb->conn, $sql) or die(mysqli_error($mydb->conn));
	$row = mysqli_fetch_assoc($result);

	$mydb->setQuery("SELECT * FROM `subject` s, `course` c 
			WHERE s.COURSE_ID=c.COURSE_ID AND c.COURSE_ID=" . $row['COURSE_ID'] . " AND SEMESTER='" . $_SESSION['SEMESTER'] . "'");

	$cur = $mydb->loadResultList();

	foreach ($cur as $result) {

		$studentsubject = new StudentSubjects();
		$studentsubject->IDNO 		= $_SESSION['IDNO'];
		$studentsubject->SUBJ_ID	= $result->SUBJ_ID;
		$studentsubject->LEVEL 		= $_SESSION['COURSELEVEL'];
		$studentsubject->SEMESTER 	= $_SESSION['SEMESTER'];
		$studentsubject->SY 		= $_SESSION['SY'];
		$studentsubject->ATTEMP 	= 1;
		$studentsubject->create();


		$grade = new Grade();
		$grade->IDNO = $_SESSION['IDNO'];
		$grade->SUBJ_ID	 = $result->SUBJ_ID;
		$grade->create();
	}
}

$sql = "INSERT INTO `schoolyr`
	           (`AY`, `SEMESTER`, `COURSE_ID`, `IDNO`, `CATEGORY`, `DATE_RESERVED`, `DATE_ENROLLED`, `STATUS`)
	    VALUES ('" . $_SESSION['SY'] . "','" . $_SESSION['SEMESTER'] . "','" . $_SESSION['COURSEID'] . "','" . $_SESSION['IDNO'] . "','ENROLLED','" . date('Y-m-d') . "','" . date('Y-m-d') . "','Old');";
$res = mysqli_query($mydb->conn, $sql) or die(mysqli_error($mydb->conn));


$sql = "INSERT INTO `tblpayment`
	 (`IDNO`, `COURSE_ID`, `COURSE_LEVEL`, `SEMESTER`, `ENTRANCEFEE`, `TOTALUNITS`, `TOTALSEMESTER`,PARTIALPAYMENT,BALANCE) 
	 VALUES(" . $_SESSION['IDNO'] . "," . $COURSEID . "," . $COURSELEVEL . ",'" . $SEMESTER . "','" . $ENTRANCEFEE . "','" . $TOTUNITS . "','" . $TOTSEM . "','" . @$PARTIAL . "','" . @$txtBalance . "')";
$res = mysqli_query($mydb->conn, $sql) or die(mysqli_error($mydb->conn));

if ($res) {

	$query = "SELECT * FROM `tblstudent` WHERE `COURSE_ID`=" . $COURSEID;
	$result = mysqli_query($mydb->conn, $query) or die(mysqli_error($mydb->conn));
	$numrow = mysqli_num_rows($result);
	// $maxrows = count($numrow);

	if ($numrow > 40) {
		# code...
		$student = new Student();
		$student->STUDSECTION = 2;
		$student->update($_SESSION['IDNO']);
	} else {
		$student = new Student();
		$student->STUDSECTION = 1;
		$student->update($_SESSION['IDNO']);
	}


	unset($_SESSION['STUDID']);
	$studAuto = new Autonumber();
	$studAuto->studauto_update();


	unset($_SESSION['gvCart']);
	redirect("index.php?q=profile");
}



?>
<script type="text/javascript">
	$.getScript("http://www.site.com.br/busca_dados3.php?partial=" + Session.get("PartialPayment"), function() {

			}
</script>

<script>
	// clear all session data
	Session.clear();

	// dump session data
	Session.dump();
</script>