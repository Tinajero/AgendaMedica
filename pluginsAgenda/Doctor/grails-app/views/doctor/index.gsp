
<%@ page import="doctor.Doctor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		
	</head>
	<body>
<%--		<a href="#list-doctor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--%>
<%--		<div class="nav" role="navigation">--%>
<%--			<ul>--%>
<%--				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--%>
<%--				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--%>
<%--			</ul>--%>
<%--		</div>--%>
		<div id="list-doctor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="apellidoMaterno" title="${message(code: 'doctor.apellidoMaterno.label', default: 'Apellido Materno')}" />
					
						<g:sortableColumn property="apellidoPaterno" title="${message(code: 'doctor.apellidoPaterno.label', default: 'Apellido Paterno')}" />
					
						<g:sortableColumn property="cedula" title="${message(code: 'doctor.cedula.label', default: 'Cedula')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'doctor.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="sexo" title="${message(code: 'doctor.sexo.label', default: 'Sexo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${doctorList}" status="i" var="doctor">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${doctor.id}">${fieldValue(bean: doctor, field: "apellidoMaterno")}</g:link></td>
					
						<td>${fieldValue(bean: doctor, field: "apellidoPaterno")}</td>
					
						<td>${fieldValue(bean: doctor, field: "cedula")}</td>
					
						<td>${fieldValue(bean: doctor, field: "nombre")}</td>
					
						<td>${fieldValue(bean: doctor, field: "sexo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${doctorCount ?: 0}" />
			</div>
		</div>
		<script>
			$(document).ready( setNavBarNuevo() );
		</script>
	</body>
</html>
