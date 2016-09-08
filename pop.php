
<html>
<head>
	<title>PHP</title>
</head>
<body>
<?php
	if (isset($_POST['submit'])) {
		$ok = true;
		if (!isset($_POST['firstname']) || $_POST['firstname'] === '') {
			$ok = false;
		}
		if (!isset($_POST['lastname']) || $_POST['lastname'] === '') {
			$ok = false;
		}
		//if (!isset($_POST['user']) || $_POST['user'] === '') {
		//	$ok = false;
		//}
		//if (!isset($_POST['password']) || $_POST['password'] === '') {
		//	$ok = false;
		//}
		//if (!isset($_POST['comments']) || $_POST['comments'] === '') {
		//	$ok = false;
		//}
		if (!isset($_POST['gender']) || $_POST['gender'] === '') {
			$ok = false;
		}
		if (!isset($_POST['tc']) || $_POST['tc'] === '') {
			$ok = false;
		}
		if (!isset($_POST['color']) || $_POST['color'] === '') {
			$ok = false;
		}
		//if (!isset($_POST['languages']) || !is_array($_POST['languages']) 
		//	|| count($_POST['languages']) === 0) {
		//	$ok = false;
		//}
		
		
		if($ok){
			//process form
			printf('First name: %s
			<br>Last name: %s
			<br>Birthday: %s',
			//<br>Language(s): %s',
			//<br>T&amp;C: %s',
			htmlspecialchars($_POST['firstname']), 
			htmlspecialchars($_POST['lastname']),
			htmlspecialchars($_POST['bday']) 
			//htmlspecialchars(implode(' ', $_POST['languages']))
			//htmlspecialchars($_POST['tc'])
			); 
		}
	}
?>
<form method="post" action="">
<br><br><br>
  First name:<br>
  <input type="text" name="firstname"><br>
  Last name:<br>
  <input type="text" name="lastname"><br>
  Birthday:<br>
  <input type="date" name="bday" max="1999-12-31" min="1900-01-01"><br>
	User name: <input type="text" name="user"><br>
	Password: <input type="password" name="password"><br>
	Gender: <input type="radio" name="gender" value="f">female
			<Input type="radio" name="gender" value="m">male<br>
	Favorite color:
		<select name="color">
			<option value="">Select item<option>
			<option value="#f00">red<option>
			<option value="#0f0">green<option>
			<option value="#00f">blue<option>
		</select><br>
	Languages spoken:
		<select name="languages[]" multiple size="3">
			<option value="en">English</option>
			<option value="fr">French</option>
			<option value="sp">Spanish</option>
		</select><br>
	Comments: <textarea name="comments"></textarea><br>
	<input type="checkbox" name="tc" value=="ok">I accept the T&C<br>
	<input type="submit" name="submit" value="Submit">
</form>
</body>
</html>

	
