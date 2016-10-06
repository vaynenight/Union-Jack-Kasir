<?php session_start(); ?>
<html>
<head>
<title>User Login</title>
</head>

<body>
		<form method = "post" action="">
			<div id = "container">
				<br>
				<div>User login page</div>
				<br>
				<input type = "text" name = "username" size = "30" maxlength = "30" placeholder = "Username" class = "input_text"/>
				<br>
				<input type = "password" name = "password" size = "30" maxlength = "30" placeholder = "Password" class = "input_text"/>
				<br>
				<div id = "div_login"><input type = "submit" name = "submit" value = "Log   in" id = "login" onmouseover = "hoverSubmit(this, 'red', 'white')" onmouseout = "outSubmit(this)"></div>
				
			</div>
<?php
include "query.php";
	if(isset($_POST["submit"])){
		$row=login($_POST["username"],$_POST["password"]);
		if($row != null){
		 $_SESSION["userid"]=$row["NPM"];
		 $_SESSION["username"] =$row["Nama_M"];
		 header("location:userhome.php");
		}
		else{
		echo "username salah";
		}
	}
?>
		</form>
</body>
</html>