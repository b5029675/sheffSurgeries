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
Searched ${totalPrescriptions} records
Found <strong>${prescriptions.size()}</strong> prescriptions.
</p>
<ul>
<g:each var="prescription" in="${prescriptions}">
<li><g:link controller="prescription" action="show"
id="${prescription.id}">${prescription.prescripNumber}</g:link></li>
 </g:each>
 </ul>
 </div>
</body>
</html>