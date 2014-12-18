
<%@ page import="doctor.Doctor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-doctor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" id="navTemp" role="navigation">
			<ul id="listaNav">
<%--				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--%>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-doctor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list doctor">
			
				<g:if test="${doctor?.apellidoMaterno}">
				<li class="fieldcontain">
					<span id="apellidoMaterno-label" class="property-label"><g:message code="doctor.apellidoMaterno.label" default="Apellido Materno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${doctor}" field="apellidoMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctor?.apellidoPaterno}">
				<li class="fieldcontain">
					<span id="apellidoPaterno-label" class="property-label"><g:message code="doctor.apellidoPaterno.label" default="Apellido Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${doctor}" field="apellidoPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctor?.cedula}">
				<li class="fieldcontain">
					<span id="cedula-label" class="property-label"><g:message code="doctor.cedula.label" default="Cedula" /></span>
					
						<span class="property-value" aria-labelledby="cedula-label"><g:fieldValue bean="${doctor}" field="cedula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctor?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="doctor.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${doctor}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctor?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="doctor.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${doctor}" field="sexo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:doctor, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${doctor}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
