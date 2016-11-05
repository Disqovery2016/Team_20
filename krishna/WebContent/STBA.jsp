<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>User Area Details</title>
<link rel="stylesheet" href="form-basic.css">
</head>
<body>
<form class="form-basic" method="post" action="CoordiantesServlet" enctype="multipart/form-data">
<div class="form-title-row">
	<h1>Analysis</h1>
</div>
<div class="form-row">
	<label><span>Different Landscaps</span> 
	<select name="type">
	<option>Agriculture</option>
	<option>Forest</option>
	<option>Barren</option>
	<option>Water</option>
	</select>
 	</label>
</div>
<div class="form-row">
	<label><span>Analysis file</span>
	<input type="file" name="fileSelect" accept=".csv" required />
	</label>
</div>
<div class="form-title-row">
	<input type="submit" value="Submit Form" />&nbsp;&nbsp;<input type="reset" value="Clear">
</div>
</form>
</body>
</html>
