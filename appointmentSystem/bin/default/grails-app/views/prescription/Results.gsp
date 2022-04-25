<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Receptionist - Advanced Search</title>

	<asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<div class="resultsbox">
    <h1 style="padding:20px">Prescriptions</h1>
	<p style="padding:20px">
		Searched ${totalPrescriptions} records
		Found <strong>${prescriptions.size()}</strong> prescriptions.
	</p>
	<ul style="padding:20px">
		<g:each var="prescription" in="${prescriptions}">
			<li><g:link controller="prescription" action="show"
			id="${prescription.id}">${prescription.prescripNumber}, 
			${prescription.pharmacyName}, 
			${prescription.dateIssued}
			</g:link></li>
		</g:each>
	</ul>
</div>
</body>
</html>Sheffield Surgeries Appointment SystemSheffield Surgeries Appointment System