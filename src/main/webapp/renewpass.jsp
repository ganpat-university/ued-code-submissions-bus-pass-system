<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="Error.jsp" session="true"%>
<!DOCTYPE html>
<html>
<head>
<title>Renew Pass Application</title>
<meta name="viewport" content="width=device-width, initial-scale=1"
	charset="ISO-8859-1">
<style>
body {
	font-family: calibri;
	background: #8da3eb !important;
}

.container {
	width: 700px;
}

input, button, select, textarea {
	border-radius: 5px;
	border: 1px solid #57afd1 !important;
}

input[type=text], input[type=password], textarea {
	width: 700px;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #cbffc7;
	outline: none;
}

div {
	padding: 10px 0;
}

hr {
	border: 1px solid #5691df;
	margin-bottom: 25px;
}

.registerbtn {
	background-color: #4a3c9b;
	color: white;
	padding: 16px 20px;
	margin-left: 110px;
	border: none;
	cursor: pointer;
	width: 50%;
	opacity: 0.9;
}

select {
	width: 200px;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

.registerbtn:hover {
	opacity: 1;
}
</style>
</head>
<body>

	<div style="margin-left: 300px;">
		<form action="renewpass" method="get">
			<div class="container">
				<center>
					<h1 style="font-size: 50px;">Renew Pass Application</h1>
				</center>
				<hr>
				<center>				
				 <label>Search Passid</label>&nbsp;&nbsp;
                    <select name="passid" required>
                        <option disabled selected>--</option>
                        <option value="2">2</option>
                        <option value="3">3</option>                      
                    </select></center><br>
                    
				<label> <b>Full Name</b></label> 
                    <input type="text" name="fullname" placeholder="fullname" required> 

                <label> <b>Date of Birth</b></label> 
                    <input type="text" name="dob" placeholder="Enter birth date" required> 
                
                <label for="email"><b>Email</b></label> 
                <input type="text" placeholder="Enter Email" name="email" required>

                <label> <b>Mobile number</b></label> 
                    <input type="text" name="mobile" placeholder="Enter your mobile number" required> 

                    <label> <b>Gender</b></label><br> 
                    <input type="radio" value="Male" name="gender" checked> Male 
                    <input type="radio" value="Female" name="gender">Female 
                    <input type="radio" value="Other" name="gender">Other
                    <br>

                <label> <b>Occupation</b></label> 
                    <input type="text" name="occupation" placeholder="Enter your occupation" required> 

                <label>Pass Type</label>&nbsp;&nbsp;
                    <select name="passtype" required>
                        <option disabled selected>--</option>
                        <option value="monthly">Monthly</option>
                        <option value="quarterly">Quarterly</option>                        
                    </select>
                
                <label>Category</label>&nbsp;&nbsp;
                    <select name="category" required>
                        <option disabled selected>--</option>
                        <option value="GENERAL">GENERAL</option>
                        <option value="ST">ST</option>
                        <option value="SCBC">SCBC</option>
                        <option value="SC">SC</option> 
                    </select><br>

                <label> <b>Userid</b></label> 
                    <input type="text" name="userid" placeholder="Enter Userid" required>

                <label>Choose Root</label>&nbsp;&nbsp;
                    <select name="root" required>
                        <option disabled selected>--</option>
                        <option value="Gandhinagar via Ranip Sabarmati railway station">Gandhinagar via Ranip Sabarmati railway station</option>
                        <option value="Usmanpura to Vadaj">Usmanpura to Vadaj</option>
                        <option value="Gita Mandir, Kalupur railway station">Gita Mandir, Kalupur railway station</option>
                        <option value=" Pathika To Chandkheda"> Pathika To Chandkheda</option> 
                    </select><br>

                    <label> <b>Education</b></label> 
                <input type="text" name="education" placeholder="Enter Education" required>

                <label> <b>Organization Name</b></label> 
                <input type="text" name="orgname" placeholder="Enter Organization" required>

			</div>

			<b>Current Address</b> <br>
				<input type="text" name="addline1" placeholder="Enter Current Address" required><br>

            <b>Organization Address</b> <br>
               <input type="text" name="orgaddress" placeholder="Enter Organization Address" required>

			<button type="submit" class="registerbtn">Submit</button>
		</form>
	</div>
</body>
</html>
	