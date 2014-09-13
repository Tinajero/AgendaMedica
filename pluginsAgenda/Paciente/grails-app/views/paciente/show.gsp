
<%@ page import="paciente.Paciente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-paciente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list paciente">
			
				<g:if test="${paciente?.apellidoMaterno}">
				<li class="fieldcontain">
					<span id="apellidoMaterno-label" class="property-label"><g:message code="paciente.apellidoMaterno.label" default="Apellido Materno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${paciente}" field="apellidoMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paciente?.apellidoPaterno}">
				<li class="fieldcontain">
					<span id="apellidoPaterno-label" class="property-label"><g:message code="paciente.apellidoPaterno.label" default="Apellido Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${paciente}" field="apellidoPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paciente?.curp}">
				<li class="fieldcontain">
					<span id="curp-label" class="property-label"><g:message code="paciente.curp.label" default="Curp" /></span>
					
						<span class="property-value" aria-labelledby="curp-label"><g:fieldValue bean="${paciente}" field="curp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paciente?.domicilio}">
				<li class="fieldcontain">
					<span id="domicilio-label" class="property-label"><g:message code="paciente.domicilio.label" default="Domicilio" /></span>
					
						<span class="property-value" aria-labelledby="domicilio-label"><g:link controller="domicilio" action="show" id="${paciente?.domicilio?.id}">${paciente?.domicilio?.calle.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${paciente?.estadoCivil}">
				<li class="fieldcontain">
					<span id="estadoCivil-label" class="property-label"><g:message code="paciente.estadoCivil.label" default="Estado Civil" /></span>
					
						<span class="property-value" aria-labelledby="estadoCivil-label"><g:fieldValue bean="${paciente}" field="estadoCivil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paciente?.expediente}">
				<li class="fieldcontain">
					<span id="expediente-label" class="property-label"><g:message code="paciente.expediente.label" default="Expediente" /></span>
					
						<span class="property-value" aria-labelledby="expediente-label"><g:link controller="expediente" action="show" id="${paciente?.expediente?.id}">${paciente?.expediente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${paciente?.fechaInscripcion}">
				<li class="fieldcontain">
					<span id="fechaInscripcion-label" class="property-label"><g:message code="paciente.fechaInscripcion.label" default="Fecha Inscripcion" /></span>
					
						<span class="property-value" aria-labelledby="fechaInscripcion-label"><g:formatDate date="${paciente?.fechaInscripcion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${paciente?.fechaNacimiento}">
				<li class="fieldcontain">
					<span id="fechaNacimiento-label" class="property-label"><g:message code="paciente.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${paciente?.fechaNacimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${paciente?.folioSeguroPopular}">
				<li class="fieldcontain">
					<span id="folioSeguroPopular-label" class="property-label"><g:message code="paciente.folioSeguroPopular.label" default="Folio Seguro Popular" /></span>
					
						<span class="property-value" aria-labelledby="folioSeguroPopular-label"><g:fieldValue bean="${paciente}" field="folioSeguroPopular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paciente?.lugarNacimiento}">
				<li class="fieldcontain">
					<span id="lugarNacimiento-label" class="property-label"><g:message code="paciente.lugarNacimiento.label" default="Lugar Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="lugarNacimiento-label"><g:fieldValue bean="${paciente}" field="lugarNacimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paciente?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="paciente.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${paciente}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paciente?.ocupacion}">
				<li class="fieldcontain">
					<span id="ocupacion-label" class="property-label"><g:message code="paciente.ocupacion.label" default="Ocupacion" /></span>
					
						<span class="property-value" aria-labelledby="ocupacion-label"><g:fieldValue bean="${paciente}" field="ocupacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paciente?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="paciente.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${paciente}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paciente?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="paciente.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${paciente}" field="telefono"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:paciente, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${paciente}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
