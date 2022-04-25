<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Doctor - Advanced Search</title>

	<asset:stylesheet src="login.css"/>
</head>
<body>
	<div class="loginbox">
		<formset>
		<legend>Advanced Search for Prescriptions</legend>
		<table>
		<g:form action="advResults">
		<tr>
 			<td>Medicine Name</td>
 			<td><g:textField name="medicine" /></td>
 		</tr>
		<tr>
 			<td>Date Issued</td>
 			<td><g:textField name="dateIssued" /></td>
 		</tr>
		<tr>
 			<td>Cost</td>
 			<td><g:textField name="totalCost" /></td>
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
