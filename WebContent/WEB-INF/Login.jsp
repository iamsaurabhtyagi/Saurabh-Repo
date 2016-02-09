<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Ghar Ki Subidha</title>
		<style>
		fieldset
		{
			width:300px;
			margin-left: 0px;
			margin-right: -13px;
			text-align:center;
		}
		</style>
		
		<script  type="text/javascript">
		function loginformvalidation()
		{
			valid = true;
			if(document.getElementById("mob").value==""|| document.getElementById("pswd").value=="")
			{
				alert("Please enter valid Mobile Number and Password");
				valid=false;
			}
			else 
			{
				var number=document.getElementById("mob").value;
				if(number.length>10||number.length<10)
				{
				  alert("Please enter 10 digit valid mobile number");
				  valid=false;
				}
			}	
			return valid;
		}
		function isNumericKey(e)
    	{
    		if (window.event) { var charCode = window.event.keyCode; }
        	else if (e) { var charCode = e.which; }
        	else { return true; }
        	if (charCode > 31 && (charCode < 48 || charCode > 57)) { return false; }
        	return true;
    	}
		</script>
		
	</head>
	<body>
		<center>
			<br><br><br>
			<form name="loginform" action="" onsubmit=" return loginformvalidation()">
				<fieldset>
					<legend>LOGIN</legend>
					<table class="tables">
						<tr>
							<td>
								<label for="Mobile">Mobile_No</label>
							</td>
							<td>
								<div id="errors"></div>
								<br>
								<input type="text" name="Mobileno" id="mob" onkeypress="return isNumericKey(event)" size="25"/>
								<br><br>
							</td>
						</tr>			
						<tr>
							<td>
								<label for="password">Password</label><br>
							</td>
							<td>
								<div id="errors"></div>
								<input type="password" name="Password" id="pswd" maxlength="10" size="25"/>
							</td>
						</tr>
					</table>
					<br><br>
					<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
					<input type="submit" name="Login" value="Submit">
					
					 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">get password</a>
				</fieldset>
			</form>
		</center>
	</body>
</html>