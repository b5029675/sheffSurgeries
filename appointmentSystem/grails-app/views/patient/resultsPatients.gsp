<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Receptionist - Advanced Search</title>

	<asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<div class="resultsbox">
    <h1 style="padding:20px">Patients</h1>
	<p style="padding:20px">
		Searched ${totalPatients} records
		Found <strong>${patients.size()}</strong> patients.
	</p>

	<ul style="padding:20px">
		<g:each var="patient" in="${patients}">
		<li><g:link controller="patient" action="show"
			id="${patient.id}">${patient.patientID}, 
			${patient.patientName}, 
			
			</g:link>
		</li>
		</g:each>
	</ul>
</div>
</body>
</html>