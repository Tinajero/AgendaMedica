
<%@ page import="domicilio.Domicilio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'domicilio.label', default: 'Domicilio')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-domicilio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-domicilio" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list domicilio">
			
				<g:if test="${domicilio?.calle}">
				<li class="fieldcontain">
					<span id="calle-label" class="property-label"><g:message code="domicilio.calle.label" default="Calle" /></span>
					
						<span class="property-value" aria-labelledby="calle-label"><g:fieldValue bean="${domicilio}" field="calle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${domicilio?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="domicilio.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${domicilio}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${domicilio?.localidad}">
				<li class="fieldcontain">
					<span id="localidad-label" class="property-label"><g:message code="domicilio.localidad.label" default="Localidad" /></span>
					
						<span class="property-value" aria-labelledby="localidad-label"><g:fieldValue bean="${domicilio}" field="localidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${domicilio?.municipio}">
				<li class="fieldcontain">
					<span id="municipio-label" class="property-label"><g:message code="domicilio.municipio.label" default="Municipio" /></span>
					
						<span class="property-value" aria-labelledby="municipio-label"><g:fieldValue bean="${domicilio}" field="municipio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${domicilio?.numeroExterior}">
				<li class="fieldcontain">
					<span id="numeroExterior-label" class="property-label"><g:message code="domicilio.numeroExterior.label" default="Numero Exterior" /></span>
					
						<span class="property-value" aria-labelledby="numeroExterior-label"><g:fieldValue bean="${domicilio}" field="numeroExterior"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${domicilio?.numeroInterior}">
				<li class="fieldcontain">
					<span id="numeroInterior-label" class="property-label"><g:message code="domicilio.numeroInterior.label" default="Numero Interior" /></span>
					
						<span class="property-value" aria-labelledby="numeroInterior-label"><g:fieldValue bean="${domicilio}" field="numeroInterior"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:domicilio, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${domicilio}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
