
<%@ page import="cita.Cita" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cita" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" id = "navTemp" role="navigation">
			<ul>
<%--				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--%>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cita" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cita">
				
				<g:if test="${cita?.paciente}">
				<li class="fieldcontain">
					<span id="paciente-label" class="property-label"><g:message code="cita.paciente.label" default="Nombre del Paciente" /></span>
					
						<span class="property-value" aria-labelledby="paciente-label"><g:link controller="paciente" action="show" id="${cita?.paciente?.id}">${cita?.paciente?.nombre.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
				
				<g:if test="${cita?.expediente}">
				<li class="fieldcontain">
					<span id="expediente-label" class="property-label"><g:message code="cita.expediente.label" default="Número de Expediente" /></span>
					
						<span class="property-value" aria-labelledby="expediente-label"><g:link controller="expediente" action="show" id="${cita?.expediente?.id}">${cita?.expediente?.numeroExpediente.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
				
				<g:if test="${cita?.doctor}">
				<li class="fieldcontain">
					<span id="doctor-label" class="property-label"><g:message code="cita.doctor.label" default="Médico Disponible" /></span>
					
						<span class="property-value" aria-labelledby="doctor-label"><g:link controller="doctor" action="show" id="${cita?.doctor?.id}">${cita?.doctor?.apellidoPaterno.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cita?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="cita.fecha.label" default="Fecha de Cita" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate format="dd/MM/yyyy" date="${cita?.fecha}" /></span>
					
				</li>
				</g:if>
			
				
			
			</ol>
			<g:form url="[resource:cita, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${cita}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		<script>
			
			$(document).ready( function(){
				var navhere = $(".nav ul");
				var botones=navhere.html()
				navhere = $("#navTemp");
				navhere.remove();
				setNavBarShowEdit(botones) 
			});
		</script>
	</body>
</html>
