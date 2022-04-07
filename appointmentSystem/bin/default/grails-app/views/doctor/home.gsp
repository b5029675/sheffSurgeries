<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>

	<title>Sheffield Surgeries | Home Page</title>

</head>
<body>

	<div class="row">
	<g:loginToggle/>
	</div>

	<button type="button" class="btnbtn-success">
		<g:link controller="Prescription" class ="link" action="Search">Search Prescriptions</g:link>
	</button>

	<button type="button" class="btnbtn-success">
		<g:link controller="Prescription" class ="link" action="viewPrescription">View Prescriptions</g:link>
	</button>

	<div id="content" role="main">
			<div class="fifth">
				<h3>Prescription Creator</h3>
				<p>lorem ipsum</p>
				<button type="button" class="btn btn-success">
				<g:link controller="Prescription" action="create">Add Prescription</g:link>
				</button>
			</div>
	</div>
</body>
</html



