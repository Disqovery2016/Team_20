<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add new channel</title>
<link rel="stylesheet" href="form-basic.css">
</head>
<body>
<form class="form-basic" method="post" action="ChannelAddServlet">
<div class="form-title-row">
	<h1>Channel details form</h1>
</div>

<div class="form-row">
	<label><span>Channel name*</span> <input type="text" name="name" pattern="^[a-zA-Z]*$" title="Enter only alphabets. Max 20" required maxlength=20 /> </label>
</div>
<div class="form-row">
	<label><span>Purpose Of Consulting</span> 
	<select name="band" required >
	<option>Crop Disease Monitering</option>
	<option>Crop Cultivation Area</option>
	<option>Ecology Cycle</option>
	<option>Soil Problem</option>
	</select>
 	</label>
</div>
<div class="form-row">
	<label><span>Land in Question</span> 
					<select name="band" required >
					<option>Agricultural</option>
					<option>Forest</option>
					<option>Barren</option>
	</select>
 	</label>
</div>
<div class="form-row">
	<label><span>Channel band*</span> 
	<select name="band" required >
	<option>I</option>
	<option>II</option>
	<option>III</option>
	<option>IV</option>
	</select>
 	</label>
</div>

 <!--
<div class="form-row">
	<label><span>Channel charge type*</span></label>
	<div class="form-radio-buttons">
		<div><label><input type="radio" value="FTA" name="chargeType" checked > <span>Free to air</span> </label></div>
		<div><label><input type="radio" value="Paid" name="chargeType"> <span>Paid</span> </label></div>
	</div>
</div>
<div class="form-row">
	<label><span>Channel transmission type*</span></label>
	<div class="form-radio-buttons">
		<div><label><input type="radio" value="Standard" name="transType" checked > <span>Standard</span> </label></div>
		<div><label><input type="radio" value="HD" name="transType"> <span>HD</span> </label></div>
	</div>
</div>
<div class="form-row">
	<label><span>Channel cost*</span> <input type="text" name="cost" pattern="[0-9]*$" required maxlength=2 /> </label>
</div>
 -->

<div class="form-title-row">
	<input type="submit" value="Submit Form" />&nbsp;&nbsp;<input type="reset" value="Clear">
</div>
</form>
</body>
</html>
