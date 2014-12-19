
<%@ page import="hojaRegistro.HojaRegistro" %>
<!DOCTYPE>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="nombreTitulo" value="${message(code:'hojaRegistro.label', default:'Hojas de Registro')}">
		<title><g:message code="default.list.label" args="[nombreTitulo]" >Hoja de registro diario> </title>
	</head>

	<body>

		<!--página inicial,página de consulta-->
		<div id="busqueda-citas" role="main">
			<h1>Introduzca datos</h1>
				<g:form controller="hojaRegistro" action="buscar">
					<label for="fecha">
						<g:message code="default.fecha.label" default="fechalabel">
					</label>
					<g:datePicker name="fecha" precision="day" value="${hojaRegistro?.fecha}"/>

					<label for="doctor">
						<g:message code="default.doctor.label" default="doctor"/>
					</label>
					<g:textField name="doctor" value="${hojaRegistro?.doctor}"/>

					<g:submitButton name="regresar" valu="${message( code:'default.button.regresar.label', default:'regresar')}"/>
					<g:submitButton name="buscar" value="${message( code:'default.button.buscar.label', default:'Buscar')}"/>
				</g:form>

		</div>

		<!-- segunda hoja opcional tabla de resultados-->
		<div id="lista-citas"  role="main">
		<table>
			<thead>
				<tr>
					<g:sorteableColumn property="Fecha" title="${message(code:'hojaRegistro.fecha.label',default:'Fecha')}"/> 
					<g:sorteableColumn property="Doctor" title="${message(code:'hojaRegistro.fecha.label',default:'Doctor')}"/> 
					<g:sorteableColumn property="Hora" title="${message(code:'hojaRegistro.fecha.label',default:'Hora')}"/> 
					<g:sorteableColumn property="Minuto" title="${message(code:'hojaRegistro.fecha.label',default:'Minuto')}"/>
					<g:sorteableColumn property="Paciente" title="${message(code:'hojaRegistro.fecha.label',default:'Paciente')}"/>
					<g:sorteableColumn property="Expediente" title="${message(code:'hojaRegistro.fecha.label',default:'Expediente')}"/>   
				</tr>
			</thead>

			<tbody><!--
				<g:each in="{$hojaRegistroList}" satus="i" var="hregistro">
					<tr class="${ i%2 == 0 ? 'par': 'impar'}">
						<!--<td action='mostrar' id="${hojaRegistro.id}" >-->
						<td>${fieldValue(bean:hregistro, field: "fecha" )}</td>

						<td>${fieldValue(bean:hregistro, field: "doctor")}</td>

						<td>${fieldValue(bean:hregistro, field: "hora")}</td>

						<td>${fieldValue(bean:hregistro, field: "minuto")}</td>

						<td>${fieldValue(bean:hregistro, field: "paciente")}</td>

						<td>${fieldValue(bean:hregistro, field: "expediente")</td>
					</tr> 
				</g:each>-->
			</tbody>
		</table>
		<div>

	</body>

</html>

