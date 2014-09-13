<%@ page import="domicilio.Domicilio" %>



<div class="fieldcontain ${hasErrors(bean: domicilio, field: 'calle', 'error')} ">
	<label for="calle">
		<g:message code="domicilio.calle.label" default="Calle" />
		
	</label>
	<g:textField name="calle" value="${domicilio?.calle}" />

</div>

<div class="fieldcontain ${hasErrors(bean: domicilio, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="domicilio.estado.label" default="Estado" />
		
	</label>
	<g:textField name="estado" value="${domicilio?.estado}" />

</div>

<div class="fieldcontain ${hasErrors(bean: domicilio, field: 'localidad', 'error')} ">
	<label for="localidad">
		<g:message code="domicilio.localidad.label" default="Localidad" />
		
	</label>
	<g:textField name="localidad" value="${domicilio?.localidad}" />

</div>

<div class="fieldcontain ${hasErrors(bean: domicilio, field: 'municipio', 'error')} ">
	<label for="municipio">
		<g:message code="domicilio.municipio.label" default="Municipio" />
		
	</label>
	<g:textField name="municipio" value="${domicilio?.municipio}" />

</div>

<div class="fieldcontain ${hasErrors(bean: domicilio, field: 'numeroExterior', 'error')} ">
	<label for="numeroExterior">
		<g:message code="domicilio.numeroExterior.label" default="Numero Exterior" />
		
	</label>
	<g:textField name="numeroExterior" value="${domicilio?.numeroExterior}" />

</div>

<div class="fieldcontain ${hasErrors(bean: domicilio, field: 'numeroInterior', 'error')} ">
	<label for="numeroInterior">
		<g:message code="domicilio.numeroInterior.label" default="Numero Interior" />
		
	</label>
	<g:textField name="numeroInterior" value="${domicilio?.numeroInterior}" />

</div>

