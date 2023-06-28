<?php
extract($_REQUEST);
mysqli_report(MYSQLI_REPORT_OFF);
$connect = mysqli_connect("localhost",'root','','images');

if (mysqli_connect_error()) {
	die("<h1>Database Connection Failed!...</h1>");
}

if (isset($_REQUEST['action']) && $_REQUEST['action'] == "showrecords") {

$query = "SELECT * FROM users where cnic='".$cnic."';";

	$result = mysqli_query($connect,$query);
if ($result->num_rows>0){


?> 
<table border="2px" style="text-align: center; color:white;background-color: blue;">

<tr style="background-color: blue; color: white">
	<th>IMAGE</th>
	<th>NAME</th>
    <th>EMAIL</th>
    <th>PHONE</th>
    <th>GENDER</th>
    <th>COUNTRY</th>
    <th>CNIC</th>
</tr>

<?php


while($data = mysqli_fetch_assoc($result)){


?>
<tr>

<td>
<img src="<?php   echo $data['imagepath'];  ?>" width="200px" height="120px">

</td>
<?php

?>
<td>
<?php


 echo $data['firstname']." ". $data['middlename']. " ".$data['lastname'];

?>
</td>
<?php


?>
<td>
<?php


 echo $data['email'];

?>
</td>
<?php


?>
<td>
<?php


 echo $data['phone'];

?>
</td>
<?php


?>
<td>
<?php


 echo $data['gender'];

?>
</td>
<?php


 ?>
<td>
<?php
 echo $data['country'];

?>
</td>
<?php

  ?>
<td>
<?php


 echo $data['cnic'];
?>
</td>
</tr>

<?php

}

?>
</table>
<?php

}
else{
  echo "<h1 style='color:red;'>Record not found</h1>";
}




}



?>