<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>

	<title>Sheffield Surgeries | Home Page</title>

</head>
<body>

	<div class="row" style="padding:10px 20px">
	<g:loginToggleRecep/>
	</div>

	<div style="padding:10px 20px">
		<h3>Search Patients</h3>
		<g:link controller="patient" class ="link" action="advSearch"><button type="button" class="indexbutton">Search Patients</button></g:link>
	</div>

	<div id="content" role="main">
		<div class="row">

			<div style="padding: 10px 20px">
				<h3>Doctor</h3>
				<p>lorem ipsum</p>
				<g:link controller="Doctor" action="create"><button type="button" class="logbutton">Add Doctor</button></g:link>
			</div>

			<div style="padding: 10px 20px">
				<h3>Nurse</h3>
				<p>lorem ipsum</p>
				<g:link controller="Nurse" action="create"><button type="button" class="logbutton">Add Nurse</button></g:link>
			</div>

			<div style="padding: 10px 20px">
				<h3>Patient</h3>
				<p>lorem ipsum</p>
				<g:link controller="Patient" action="create"><button type="button" class="logbutton">Add Patient</button></g:link>
			</div>

			<div style="padding: 10px 20px">
				<h3>Receptionist</h3>
				<p>lorem ipsum</p>
				<g:link controller="Receptionist" action="create"><button type="button" class="logbutton">Add Receptionist</button></g:link>
			</div>

			<div style="padding: 10px 20px">
				<h3>Appointment</h3>
				<p>lorem ipsum</p>
				<g:link controller="Appointment" action="create"><button type="button" class="logbutton">Add Appointment</button></g:link>
			</div>

		</div>
	</body>
</html



