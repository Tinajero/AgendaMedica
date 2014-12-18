
<%@ page import="domicilio.Domicilio"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'domicilio.label', default: 'Domicilio')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-domicilio" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="list-domicilio" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table>
			<thead>
				<tr>

					<g:sortableColumn property="calle"
						title="${message(code: 'domicilio.calle.label', default: 'Calle')}" />

					<g:sortableColumn property="estado"
						title="${message(code: 'domicilio.estado.label', default: 'Estado')}" />

					<g:sortableColumn property="localidad"
						title="${message(code: 'domicilio.localidad.label', default: 'Localidad')}" />

					<g:sortableColumn property="municipio"
						title="${message(code: 'domicilio.municipio.label', default: 'Municipio')}" />

					<g:sortableColumn property="numeroExterior"
						title="${message(code: 'domicilio.numeroExterior.label', default: 'Numero Exterior')}" />

					<g:sortableColumn property="numeroInterior"
						title="${message(code: 'domicilio.numeroInterior.label', default: 'Numero Interior')}" />

				</tr>
			</thead>
			<tbody>
				<g:each in="${domicilioList}" status="i" var="domicilio">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${domicilio.id}">
								${fieldValue(bean: domicilio, field: "calle")}
							</g:link></td>

						<td>
							${fieldValue(bean: domicilio, field: "estado")}
						</td>

						<td>
							${fieldValue(bean: domicilio, field: "localidad")}
						</td>

						<td>
							${fieldValue(bean: domicilio, field: "municipio")}
						</td>

						<td>
							${fieldValue(bean: domicilio, field: "numeroExterior")}
						</td>

						<td>
							${fieldValue(bean: domicilio, field: "numeroInterior")}
						</td>

					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${domicilioCount ?: 0}" />
		</div>
	</div>
</body>
</html>
