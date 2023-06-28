<!DOCTYPE html>
<html>
<head>
	<title> SEARCH WITH CNIC </title>


<script type="text/javascript">

		function showuser(){


			var data = document.getElementById('cnic').value;


			var cnic = data;
			 
			// alert(cnic);
			var obj;
			if (window.XMLHttpRequest) {
				obj = new XMLHttpRequest();
			}else{
				obj = new ActiveXObject("Microsoft.XMLHTTP");
			}

			obj.onreadystatechange = function(){

				if (obj.readyState == 4 && obj.status == 200) {

					document.getElementById('showdata').innerHTML = obj.responseText;
				}
			}

				obj.open("POST",'data.php');
				obj.setRequestHeader("content-type","application/X-www-form-urlencoded");
			obj.send("action=showrecords&cnic=" + data);
		}
	</script>





</head>
<body style="background-color: lightblue">
<center>


<fieldset style="background-color: yellow">	
	<legend style="color:"><h1>DATA WITH CNIC</h1></legend>
CNIC 
<input type="text" id="cnic" name="cnic" placeholder="Enter cnic num" required="">
</br>
</br>
<button onclick="showuser()"> SUBMIT</button>
</fieldset>

<?php
        if (isset($_GET['msg'])) {
            echo $_GET['msg'];
        }
    ?>

<span id="showdata"></span>

</center>





</body>
</html>