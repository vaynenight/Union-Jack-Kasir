<html>
<head>
<title>Admin Login</title>
</head>
<body>
		<form method = "post" action="adminhome.php">
			<div id = "container">
				<br>
				<div>Admin login page</div>
				<br>
				<input type = "text" name = "username" size = "30" maxlength = "30" placeholder = "Username" class = "input_text"/>
				<br>
				<input type = "password" name = "password" size = "30" maxlength = "30" placeholder = "Password" class = "input_text"/>
				<br>
				<div id = "div_login"><input type = "submit" name = "submit" value = "Log   in" id = "login" onmouseover = "hoverSubmit(this, 'red', 'white')" onmouseout = "outSubmit(this)"></div>
				
			</div>
		</form>
</body>
</html>