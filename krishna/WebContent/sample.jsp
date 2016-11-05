<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Manage Set top boxes here</title>
<link rel="stylesheet" href="form-basic.css">

</head>
<body>
<form class="form-basic" method="post" action="ChannelAddServlet">
<div class="form-title-row">
	<h1>User details form</h1>
</div>
		
			<div class="form-title-row">
					<div style="text-align: center;">  
                        
						
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
	<div class="form-row">
	<label><span>Location*</span> <input type="text" name="name" pattern="^[a-zA-Z]*$" " required  /> </label>
</div>
</div>
						
						
						
						
	<p><a href="https://maps.googleapis.com/maps/api/geocode/json?address=Ganeshkhind+Pune+Maharashtra,+411007+View,+CA&key=AIzaSyB0BHNF2kaBzHVWKIqM0le47i4_pgL58zw">location </a></p>			
						
						

			</div>
        	</div>
			
			<div class="form-title-row">
	<input type="submit" value="Submit Form" />&nbsp;&nbsp;<input type="reset" value="Clear">
			</div>
            
           <div class="form-title-row">
				<a href="index.html"><input type="button" value="Home" /></a>
		   </div>
		   
</form>
</body>
</html>