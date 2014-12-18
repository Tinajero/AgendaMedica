<%@ page import="doctor.Doctor" %>



<div class="fieldcontain ${hasErrors(bean: doctor, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="doctor.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" value="${doctor?.apellidoMaterno}" />

</div>

<div class="fieldcontain ${hasErrors(bean: doctor, field: 'apellidoPaterno', 'error')} ">
	<label for="apellidoPaterno">
		<g:message code="doctor.apellidoPaterno.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoPaterno" value="${doctor?.apellidoPaterno}" />

</div>

<div class="fieldcontain ${hasErrors(bean: doctor, field: 'cedula', 'error')} ">
	<label for="cedula">
		<g:message code="doctor.cedula.label" default="Cedula" />
		
	</label>
	<g:textField name="cedula" value="${doctor?.cedula}" />

</div>

<div class="fieldcontain ${hasErrors(bean: doctor, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="doctor.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${doctor?.nombre}" />

</div>

<div class="fieldcontain ${hasErrors(bean: doctor, field: 'sexo', 'error')} ">
	<label for="sexo">
		<g:message code="doctor.sexo.label" default="Sexo" />
		
	</label>
	<g:textField name="sexo" value="${doctor?.sexo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: doctor, field: 'tipodeCita', 'error')} ">
	<label for="tipodeCita">
		<g:message code="doctor.tipodeCita.label" default="Tipode Cita" />
		
	</label>
	<g:select name="tipodeCita"  from="${catalogocita.Catalogocita.list()}" multiple="multiple" optionValue='nombre' optionKey="id" size="5" required="" value="${doctor?.tipodeCita*.id}" class="many-to-many"/>

</div>

