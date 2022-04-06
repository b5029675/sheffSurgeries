<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Receptionist - Advanced Search</title>

	<asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<div class="row">
<h1>Sheffield Surgeries Appointment System</h1>
<formset>
<legend>Advanced Search for Students</legend>
<table>
<g:form action="advResults">
<tr>
 <td>Patient Name</td>
 <td><g:textField name="patientName" /></td>
 </tr>
<tr>
 <td>Patient ID</td>
 <td><g:textField name="patientID" /></td>
 </tr>
<tr>
 <td>Patient Residence</td>
 <td><g:textField name="patientResidence" /></td>
 </tr>
<tr>
 <td>Query Type:</td>
 <td><g:radioGroup name="queryType" labels="['And','Or','Not']"
values="['and','or','not']" value="and" >
${it.radio} ${it.label}
 </g:radioGroup>
 </td>
 </tr>
<tr>
 <td/>
 <td>
 <g:submitButton name="search" value="Search"/></td>
 </tr>
 </g:form>
 </table>
 </formset>
</div>
 </body>
</html>
