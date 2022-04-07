<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Receptionist - Advanced Search</title>

	<asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<div class="row">
    <h1>Prescription results</h1>
<h3>Search Results</h3>
<p>
Searched ${totalPatients} records
Found <strong>${patients.size()}</strong> patients.
</p>
<ul>
<g:each var="patient" in="${patients}">
<li><g:link controller="prescription" action="show"
id="${patient.id}">${patient.patientID}</g:link></li>
 </g:each>
 </ul>
 </div>
</body>
</html>