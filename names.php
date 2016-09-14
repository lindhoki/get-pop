
<html>
<head>
	<title>PHP</title>
	</head>
<body>
<?php
  $firstname = '';
  $lastname = '';
  $bday = '';
  $dday = '';
    ob_get_clean();
	
	if (isset($_POST['submit'])) {
		$ok = true;
		
		if (!isset($_POST['firstname']) || $_POST['firstname'] === '') {
			$ok = false;
		} else {
			$firstname = $_POST['firstname'];
		}
		if (!isset($_POST['lastname']) || $_POST['lastname'] === '') {
			$ok = false;
		} else {
			$lastname = $_POST['lastname'];
		}
		if (!isset($_POST['bday']) || $_POST['bday'] === '') {
			$ok = false;
		} else {
			$bday = $_POST['bday'];
		}
		$dday = $_POST['dday'];
		
		
		if($ok){
			$db = mysqli_connect('localhost', 'root', '', 'php');
			$sql = sprintf("INSERT INTO people (firstname, lastname, birth, death) VALUES (
				'%s', '%s', %u, %u
				)", 
				mysqli_real_escape_string($db, $firstname),
				mysqli_real_escape_string($db, $lastname),
				$bday,
				$dday);
			mysqli_query($db, $sql);
						
			mysqli_close($db);
			//echo '<p>Name added.</p>';
		}
	}
?>
<form method="post" action="">
<br><br><br>
  Enter a new name below. <br>
  First name:<br>
  <input type="text" name="firstname" value="<?php echo htmlspecialchars($firstname); ?>"><br>
  Last name:<br>
  <input type="text" name="lastname" value="<?php echo htmlspecialchars($lastname); ?>"><br>
  Birth year:<br>
  <input type="int" name="bday" max="1999" min="1900" value="<?php echo htmlspecialchars($bday); ?>"><br>
  Death year:<br>
  <input type="int" name="dday" max="1999" min="1900" value="<?php echo htmlspecialchars($dday); ?>"><br>
   <br>
	<input type="submit" name="submit" value="Submit">
</form>
</body>
</html>

	