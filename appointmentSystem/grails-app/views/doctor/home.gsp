<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Sheffield Surgeries | Home Page</title>
	<asset:stylesheet src="main.css"/>

</head>
<body>

	<div class="row" style="padding:10px 20px">
	<g:loginToggle/>
	</div>

	<div style="padding:10px 20px">
			<g:link controller="Prescription" class ="link" action="Search"><button type="button" class="indexbutton">Search Prescriptions</button></g:link>

			<g:link controller="Prescription" class ="link" action="Results"><button type="button" class="indexbutton">View Prescriptions</button></g:link>

			<g:link controller="Patient" class ="link" action="resultsPatients"><button type="button" class="indexbutton">View Patients</button></g:link>

			<g:link controller="Appointment" class ="link" action="resultsAppointments"><button type="button" class="indexbutton">View Appointments</button></g:link>
	</div>

	<div id="content" role="main">
			<div class="fifth" style="padding: 10px 20px">
				<h3>Prescription Creator</h3>
				<p>lorem ipsum</p>
				<g:link controller="Prescription" action="create"><button type="button" class="logbutton">Add Prescription</button></g:link>
			</div>
	</div>
</body>
</html



