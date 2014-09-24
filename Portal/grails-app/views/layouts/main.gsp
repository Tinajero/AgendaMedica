<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->

<head>
  <title><g:layoutTitle default="Grails"/></title>
  <asset:stylesheet src="application.css"/>
  <g:layoutHead/>
<%--    <r:layoutResources/>--%>
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
		      	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			    </button>
			    <a class="navbar-brand"  href="${createLink(uri: '/')}">Agenda Medica</a>
			    
    		</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a>link</a></li>
					
				</ul>
			</div> <!-- ./nav-bar collapse -->
		</div><!-- /.container fluid -->
	</nav>
	<div class="container-fluid">
	  <div class="row">	
	  	<div class="col-sm-3 col-md-2 sidebar">
	  		 <ul class="nav nav-sidebar">
	  		 	<li><g:link controller="doctor">Doctor</g:link></li>
<%--	  		 	<li><a>Citas</a></li>--%>
	  		 	<li><g:link controller="paciente">Pacientes</g:link></li>
	  		 	<li><a>Busqueda</a></li>
	  		 </ul>
	  	</div>
	  	<div class="col-sm-9 col-md-10">
		  <g:layoutBody/>
		  <asset:javascript src="application.js"/>
	<%--   <r:layoutResources/>--%>
		</div>
	  </div>
	</div>
</body>
</html>