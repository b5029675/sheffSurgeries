<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>

	<title>Sheffield Surgeries | Home Page</title>

</head>
<body>

	<div class="row">
	<g:loginToggleRecep/>
	</div>

	<button type="button" class="btnbtn-success">
		<g:link controller="patient" action="advResults">Show Patients</g:link>
	</button>
	

	<div id="content" role="main">
		<div class="row">

			<div class="second">
				<h3>Doctor</h3>
				<p>lorem ipsum</p>
				<button type="button" class="btn btn-success">
				<g:link controller="Doctor" action="create">Add Doctor</g:link>
				</button>
			</div>

			<div class="third">
				<h3>Nurse</h3>
				<p>lorem ipsum</p>
				<button type="button" class="btn btn-success">
				<g:link controller="Nurse" action="create">Add Nurse</g:link>
				</button>
			</div>

			<div class="fourth">
				<h3>Patient</h3>
				<p>lorem ipsum</p>
				<button type="button" class="btn btn-success">
				<g:link controller="Patient" action="create">Add Patient</g:link>
				</button>
			</div>

			<div class="sixth">
				<h3>Receptionist</h3>
				<p>lorem ipsum</p>
				<button type="button" class="btn btn-success">
				<g:link controller="Receptionist" action="create">Add Receptionist</g:link>
				</button>
			</div>
		</div>
	</body>
</html



