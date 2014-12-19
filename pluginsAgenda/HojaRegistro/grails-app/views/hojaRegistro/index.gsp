
<%--@ page import="hojaRegistro.HojaRegistro" --%>
<!DOCTYPE html>
<html>
	<head>

		<meta name="layout" content="main">
		<g:set var="nombreTitulo" value="${message(code:'hojaRegistro.label', default:'Hojas de Registro')}"/>
		<title><g:message code="default.list.label" args="[nombreTitulo]" /> </title>

	</head>

	<body>

		<!--página inicial,página de consulta-->
		
		<div id="busqueda-citas" role="main">
			<h1>Introduzca datos</h1>
			
				<g:form controller="hojaRegistro" action="buscar">
					<label for="fecha">
						<g:message code="default.fecha.label" default="fecha"/>
					</label>
					<g:datePicker name="fecha" precision="day" value="${hojaRegistro?.fecha}"/>

					<label for="doctor">
						<g:message code="default.doctor.label" default="doctor"/>
					</label>
					<g:textField name="doctor" value="${hojaRegistro?.doctor}"/>

					<g:submitButton name="regresar" value="${message( code:'default.button.regresar.label', default:'regresar')}"/>
					<g:submitButton name="buscar" value="${message( code:'default.button.buscar.label', default:'Buscar')}"/>
				</g:form>

		</div>

	</body>

</html>

