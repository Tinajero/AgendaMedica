<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
<%--		<a href="#create-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--%>
<%--		<div class="nav" role="navigation">--%>
<%--			<ul>--%>
<%--				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--%>
<%--				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--%>
<%--			</ul>--%>
<%--		</div>--%>
		<div id="create-paciente" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${paciente}">
			<ul class="errors" role="alert">
				<g:eachError bean="${paciente}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:hasErrors bean="${domicilio}">
			<ul class="errors" role="alert">
				<g:eachError bean="${domicilio}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:paciente, action:'save']" >
				<fieldset class="form">
					<ul class="nav nav-tabs" role="tablist">
						<li class="active"> <a href="#Datosgenerales" role="tab" data-toggle="tab"> Datos generales</a></li>
						<li><a href="#Domicilio" role="tab" data-toggle="tab">Domicilio</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="Datosgenerales">
							<g:render template="form"/>
						</div>
						<div class="tab-pane" id="Domicilio">
							<g:render template="form" contextPath="/../../../Domicilio/grails-app/views/domicilio"/>
						</div>
					</div>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
			<script>
			$(document).ready( setNavBarLista() );
			$(document).ready( validateClassAlphaonly() );
		</script>
	</body>
</html>
