<%@ page import="catalogocita.Catalogocita" %>



<div class="fieldcontain ${hasErrors(bean: catalogocita, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="catalogocita.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${catalogocita?.descripcion}" />

</div>

<div class="fieldcontain ${hasErrors(bean: catalogocita, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="catalogocita.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${catalogocita?.nombre}" />

</div>

