<!doctype HTML>
<?php
include "query.php";
$data = array("","","");
if($_GET["id"] == 0){
 $data[0]="";
 $data[1]="";
 $data[2]="";

}
else{
$result=get("minuman","SELECT * FROM `minuman` WHERE IdMinuman='" .$_GET["id"]. "';");
	$data[0]=$result[0]["Nama"];
	$data[1]=$result[0]["harga"];
	$data[2]=$result[0]["stock"];
}
?>
<html>
<body>
<form action="" method="post">
<table>	
<td>Nama  		: </td><td><?php echo "<input type='text' name='Nama' value = '" .$data[0]. "'></input>"; ?></td>
</tr>
<tr>
<td>Harga		: </td><td><?php echo "<input type='text' name='harga' value = '" .$data[1]. "'></input>"; ?></td>
</tr>
<tr>
<td>Stock	: </td><td><?php echo "<input type='text' name='stock' value = '" .$data[2]. "'></input>"; ?></td>
</tr>
<tr>
</table>
<input type="submit" value="Submit" name="submit"></input>
<a href="stock_minuman.php">Kembali</a>
</form>
<?php
if(isset($_POST["submit"])){
	$data[0]=$_POST["Nama"];
	$data[1]=$_POST["harga"];
	$data[2]=$_POST["stock"];

	if($_GET["id"] == 0){
	insert("minuman",$data);	
	}

	else{
	update("minuman",$_GET["id"],$data);
	}
}
?>
</body>
</html>