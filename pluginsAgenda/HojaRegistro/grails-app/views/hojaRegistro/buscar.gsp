<DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<g:set var="nombreTitulo" value="${message( code:'hojaRegistro.label', default:'Resultados citas')}" />
		<title> <message  code="default.hojaRegistro.label" args="[nombreTitulo]" /></title>

	</head>
		<!-- segunda hoja opcional tabla de resultados-->
		<div id="lista-citas"  role="main">
		
		<table>
			<thead>
				<tr>
					<g:sortableColumn property="Fecha" title="${message(code:'hojaRegistro.fecha.label',default:'Fecha')}"/> 
					<g:sortableColumn property="Doctor" title="${message(code:'hojaRegistro.fecha.label',default:'Doctor')}"/> 
					<g:sortableColumn property="Hora" title="${message(code:'hojaRegistro.fecha.label',default:'Hora')}"/> 
					<g:sortableColumn property="Minuto" title="${message(code:'hojaRegistro.fecha.label',default:'Minuto')}"/>
					<g:sortableColumn property="Paciente" title="${message(code:'hojaRegistro.fecha.label',default:'Paciente')}"/>
					<g:sortableColumn property="Expediente" title="${message(code:'hojaRegistro.fecha.label',default:'Expediente')}"/>   
				</tr>
			</thead>

			<tbody> 

			</tbody>
		</table>
		
		<ul>
		<g:each in="${lista}" var ="elemento">
			<li>${elemento}</li>
		</g:each>
		<ul>
		</div>


</html>