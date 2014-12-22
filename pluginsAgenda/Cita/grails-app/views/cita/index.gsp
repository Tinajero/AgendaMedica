
<%@ page import="cita.Cita" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<%--<a href="#list-cita" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--%>
		<div id="list-cita" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="cita.doctor.label" default="Doctor" /></th>
					
						<th><g:message code="cita.expediente.label" default="Expediente" /></th>
					
						<g:sortableColumn property="fecha" title="${message(code: 'cita.fecha.label', default: 'Fecha')}" />
					
						<th><g:message code="cita.paciente.label" default="Paciente" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${citaList}" status="i" var="cita">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cita.id}">${fieldValue(bean: cita, field: "doctor.apellidoPaterno")}</g:link></td>
					
						<td>${fieldValue(bean: cita, field: "expediente.numeroExpediente")}</td>
						
						<td><g:formatDate format="dd/MM/yyyy" date="${cita.fecha}" /></td>
						
						<td>${fieldValue(bean: cita, field: "paciente.nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${citaCount ?: 0}" />
			</div>
		</div>
		<script>
			$(document).ready( setNavBarNuevo() );
		</script>
	</body>
</html>
