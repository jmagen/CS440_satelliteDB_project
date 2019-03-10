<!DOCTYPE html>
<!-- Add Supplier Info to Table Satellites -->
<html>
	<head>
		<title>Add Satellite</title>
		<link rel="stylesheet" href="index.css">
		<script type = "text/javascript"  src = "verifyInput.js" > </script> 
	</head>
<body>


<?php
	include "header.php";
	$msg = "Add new set of data to database";

// change the value of $dbuser and $dbpass to your username and password
	include 'connectvars.php'; 
	
	$conn = mysqli_connect(DB_HOST, cs440_hutchico, 4827, DB_NAME);
	if (!$conn) {
		die('Could not connect: ' . mysql_error());
	}
	if ($_SERVER["REQUEST_METHOD"] == "POST") {

// Escape user inputs for security
		$satId = mysqli_real_escape_string($conn, $_POST['satId']);
		$satname = mysqli_real_escape_string($conn, $_POST['satname']);
		$intl_code = mysqli_real_escape_string($conn, $_POST['intl_code']);
		$period = mysqli_real_escape_string($conn, $_POST['period']);
		$category = mysqli_real_escape_string($conn, $_POST['category']);
		$dates = mysqli_real_escape_string($conn, $_POST['dates']);
		$orgcode = mysqli_real_escape_string($conn, $_POST['orgcode']);
		
		// attempt insert query
		$query = "INSERT INTO Satellites (satId, satname, intl_code, period) VALUES ('$satId', '$satname', '$intl_code', '$period')";
		if(mysqli_query($conn, $query)){
			$msg =  "Record added successfully.<p>";
		} else{
			echo "ERROR: Could not able to execute $query. " . mysqli_error($conn);
		}	
		$query = "INSERT INTO Launches (satId, dates) VALUES ('$satId', '$dates')";
		if(mysqli_query($conn, $query)){
			$msg =  "Record added successfully.<p>";
		} else{
			echo "ERROR: Could not able to execute $query. " . mysqli_error($conn);
		}
		$query = "INSERT INTO Contains (category, satId) VALUES ('$category', '$satId')";
		if(mysqli_query($conn, $query)){
			$msg =  "Record added successfully.<p>";
		} else{
			echo "ERROR: Could not able to execute $query. " . mysqli_error($conn);
		}
		$query = "INSERT INTO Operates (orgCode, satId) VALUES ('$orgcode', '$satId')";
		if(mysqli_query($conn, $query)){
			$msg =  "Record added successfully.<p>";
		} else{
			echo "ERROR: Could not able to execute $query. " . mysqli_error($conn);
		}
		
}
// close connection
mysqli_close($conn);

?>
	<section>
    <h2> <?php echo $msg; ?> </h2>

<form method="post" id="addForm">
<fieldset>
	<legend>Satellite Info:</legend>
    <p>
        <label for="satId">Satellite ID:</label>
        <input type="number" min=1 max = 99999 class="required" name="satId" id="satId" title="sid should be numeric">
    </p>
    <p>
        <label for="satname">Satellite name:</label>
        <input type="text" class="required" name="satname" id="satname">
    </p>

    <p>
        <label for="intl_code">International code:</label>
        <input type="text" class="required" name="intl_code" id="intl_code">
    </p>
    <p>
        <label for="period">Period:</label>
        <input type="number" "step=0.001" class="required" name="period" id="period" title="decimal">
    </p>
    <p>
        <label for="category">Category:</label>
        <input type="text" class="required" name="category" id="category">
    </p>

    <p>
        <label for="dates">Date:</label>
        <input type="text" class="required" name="dates" id="dates">
    </p>
    <p>
        <label for="orgcode">Organization code:</label>
        <input type="text" class="required" name="orgcode" id="orgcode">
    </p>


</fieldset>

      <p>
        <input type = "submit"  value = "Submit" />
        <input type = "reset"  value = "Clear Form" />
      </p>
</form>
</body>
</html>
