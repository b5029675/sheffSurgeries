<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Receptionist - Advanced Search</title>

	<asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<div class="resultsbox">
    <h1 style="padding:20px">Appointments</h1>
	<p style="padding:20px">
		Searched ${totalappointments} records
		Found <strong>${appointments.size()}</strong> appointments.
	</p>
	<ul style="padding:20px">
		<g:each var="appointment" in="${appointments}">
			<li><g:link controller="appointment" action="show"
			id="${appointment.id}">${appointment.appID}, 
			${appointment.appDate}, 
			${appointment.roomNumber}
			</g:link></li>
		</g:each>
	</ul>
</div>
</body>
</html>