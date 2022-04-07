<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Receptionist - Advanced Search</title>

	<asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<div class="row">
    <h1>appointment results</h1>
<h3>Search Results</h3>
<p>
Searched ${totalappointments} records
Found <strong>${appointments.size()}</strong> appointments.
</p>
<ul>
<g:each var="appointment" in="${appointments}">
<li><g:link controller="appointment" action="show"
id="${appointment.id}">${appointment.appID}</g:link></li>
 </g:each>
 </ul>
 </div>
</body>
</html>