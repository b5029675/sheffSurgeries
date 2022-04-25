<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Sheffield Surgeries System</title>
    <asset:stylesheet src="home.css"/>
</head>
<body>

<div class="logincontainer">
    <div class="logininner">
            <g:loginToggle/>
    </div>
    <div class="logininner">
            <g:loginToggleRecep/>
    </div>
</div>

<div id="content" role="main">


    <div class="container">
        <section class="row colset-2-its">
            <h1>Sheffield Surgeries appointment application</h1>

            <p class="please">
		    Please log in above!
            </p>

            <div id="controllers" role="navigation">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>

        </section>
    </div>
</div>

</body>
</html>
