<html>
	<head>
		<title>Employee Registration Form Using Bean class,DAO class, jsp action element</title>
	</head>
	<body>
		<h1>Employee Registration Form</h1><hr>
		<form action="addEmployee.jsp" method="post">
			Employee Id : <input type="number" name="id"><br><br>
			Employee Name :<input type="text" name="name"><br><br>
			Employee Gender : <input type="radio" name="gender" value="Male">Male
			<input type="radio" name="gender" value="Female">Female<br><br>
			Employee Role : 
			<select name="role">
				<option value="Development">Development</option>
				<option value="Testing">Testing</option>
				<option value="Designing">Designing</option>
				<option value="Marketing">Marketing</option>
				<option value="Finance">Finance</option>
				<option value="Deployment">Deployment</option>
			</select><br><br>
			Employee Location : 
			<select name="loc">
				<option value="Tamilnadu">Tamilnadu</option>
				<option value="Andra">Andra</option>
				<option value="Bihar">Bihar</option>
				<option value="Rajasthan">Rajasthan</option>
				<option value="Telungana">Telungana</option>
			</select><br><br>
			<input type="checkbox" name="opt" >Do you have passport<br><br>
			<input type="submit" value="Register">
			<input type="reset" value="Clear">
		</form>
	</body>
</html>