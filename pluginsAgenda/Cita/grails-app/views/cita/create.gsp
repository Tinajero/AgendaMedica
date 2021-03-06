<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<%--<a href="#create-cita" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--%>
		<div id="create-cita" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${cita}">
			<ul class="errors" role="alert">
				<g:eachError bean="${cita}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:cita, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
			<!-- Large modal -->
			<button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Large modal</button>
			<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  				<div class="modal-dialog modal-lg">
    				<div class="modal-content">
      					...
    				</div>
  				</div>
			</div>
			<!-- Small modal -->
			<button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>
			<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  				<div class="modal-dialog modal-sm">
    				<div class="modal-content">
      					...
    				</div>
  				</div>
			</div>
			<script>
				$(document).ready( setNavBarLista() );
				$(document).ready( validateClassAlphaonly() );
			</script>
	</body>
</html>
