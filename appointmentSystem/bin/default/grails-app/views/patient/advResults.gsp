<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Receptionist - Advanced Search</title>

	<asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<div class="resultsbox">
	<h1 style="padding:20px">Sheffield Surgeries Appointment System</h1>
	<div style="padding:20px">
		<h3>Advanced Results</h3>
		<p>Searched
			for patients matching <em>${term}</em>.
			Found <strong>${patients.size()}</strong> patients.
		</p>
		<ul>
			<g:each var="patient" in="${patients}">
			<li><g:link controller="patient" action="show"
			id="${patient.id}">${patient.patientName}</g:link></li>
			</g:each>
		</ul>
	</div>

	<g:link action='advSearch'>Search Again</g:link>
</div>
</body>
</html>
