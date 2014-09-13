<%@ page import="paciente.Paciente" %>



<div class="fieldcontain ${hasErrors(bean: paciente, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="paciente.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" value="${paciente?.apellidoMaterno}" />

</div>

<div class="fieldcontain ${hasErrors(bean: paciente, field: 'apellidoPaterno', 'error')} ">
	<label for="apellidoPaterno">
		<g:message code="paciente.apellidoPaterno.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoPaterno" value="${paciente?.apellidoPaterno}" />

</div>

<div class="fieldcontain ${hasErrors(bean: paciente, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="paciente.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${paciente?.nombre}" />

</div>

<div class="fieldcontain ${hasErrors(bean: paciente, field: 'curp', 'error')} ">
	<label for="curp">
		<g:message code="paciente.curp.label" default="Curp" />
		
	</label>
	<g:textField name="curp" value="${paciente?.curp}" />

</div>

<%--<div class="fieldcontain ${hasErrors(bean: paciente, field: 'domicilio', 'error')} ">--%>
<%--	<label for="domicilio">--%>
<%--		<g:message code="paciente.domicilio.label" default="Domicilio" />--%>
<%--		--%>
<%--	</label>--%>
<%--	<g:select id="domicilio" name="domicilio.id" from="${domicilio.Domicilio.list()}" optionKey="id" required="" value="${paciente?.domicilio?.id}" class="many-to-one"/>--%>
<%----%>
<%--</div>--%>

<div class="fieldcontain ${hasErrors(bean: paciente, field: 'estadoCivil', 'error')} ">
	<label for="estadoCivil">
		<g:message code="paciente.estadoCivil.label" default="Estado Civil" />
		
	</label>
<%--	<g:textField name="estadoCivil" value="${paciente?.estadoCivil}" />--%>
	<g:select name="estadoCivil" from="${paciente.Paciente.constraints.estadoCivil.inList }" value="${paciente?.estadoCivil}" />

</div>

<%--<div class="fieldcontain ${hasErrors(bean: paciente, field: 'expediente', 'error')} ">--%>
<%--	<label for="expediente">--%>
<%--		<g:message code="paciente.expediente.label" default="Expediente" />--%>
<%--		--%>
<%--	</label>--%>
<%--	<g:select id="expediente" name="expediente.id" from="${expediente.Expediente.list()}" optionKey="id" required="" value="${paciente?.expediente?.id}" class="many-to-one"/>--%>
<%----%>
<%--</div>--%>

<div class="fieldcontain ${hasErrors(bean: paciente, field: 'fechaInscripcion', 'error')} ">
	<label for="fechaInscripcion">
		<g:message code="paciente.fechaInscripcion.label" default="Fecha Inscripcion" />
		
	</label>
	<g:datePicker name="fechaInscripcion" precision="day" value="${paciente?.fechaInscripcion}" />

</div>

<div class="fieldcontain ${hasErrors(bean: paciente, field: 'fechaNacimiento', 'error')} ">
	<label for="fechaNacimiento">
		<g:message code="paciente.fechaNacimiento.label" default="Fecha Nacimiento" />
		
	</label>
	<g:datePicker name="fechaNacimiento" precision="day" value="${paciente?.fechaNacimiento}" />

</div>

<div class="fieldcontain ${hasErrors(bean: paciente, field: 'folioSeguroPopular', 'error')} ">
	<label for="folioSeguroPopular">
		<g:message code="paciente.folioSeguroPopular.label" default="Folio Seguro Popular" />
		
	</label>
	<g:textField name="folioSeguroPopular" value="${paciente?.folioSeguroPopular}" />

</div>

<div class="fieldcontain ${hasErrors(bean: paciente, field: 'lugarNacimiento', 'error')} ">
	<label for="lugarNacimiento">
		<g:message code="paciente.lugarNacimiento.label" default="Lugar Nacimiento" />
		
	</label>
	<g:textField name="lugarNacimiento" value="${paciente?.lugarNacimiento}" />

</div>



<div class="fieldcontain ${hasErrors(bean: paciente, field: 'ocupacion', 'error')} ">
	<label for="ocupacion">
		<g:message code="paciente.ocupacion.label" default="Ocupacion" />
		
	</label>
	<g:textField name="ocupacion" value="${paciente?.ocupacion}" />

</div>

<div class="fieldcontain ${hasErrors(bean: paciente, field: 'sexo', 'error')} ">
	<label for="sexo">
		<g:message code="paciente.sexo.label" default="Sexo" />
		
	</label>
<%--	<g:textField name="sexo" value="${paciente?.sexo}" />--%>
	<g:select from="${paciente.Paciente.constraints.sexo.inList}" value="${paciente?.sexo }" name="sexo"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paciente, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="paciente.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${paciente?.telefono}" />

</div>

