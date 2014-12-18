<%@ page import="cita.Cita" %>



<div class="fieldcontain ${hasErrors(bean: cita, field: 'doctor', 'error')} ">
	<label for="doctor">
		<g:message code="cita.doctor.label" default="Doctor" />
		
	</label>
	<g:select id="doctor" name="doctor.id" from="${doctor.Doctor.list()}" optionKey="id" required="" value="${cita?.doctor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cita, field: 'fecha', 'error')} ">
	<label for="fecha">
		<g:message code="cita.fecha.label" default="Fecha" />
		
	</label>
	<g:datePicker name="fecha" precision="day" value="${cita?.fecha}" />

</div>

<div class="fieldcontain ${hasErrors(bean: cita, field: 'hora', 'error')} ">
	<label for="hora">
		<g:message code="cita.hora.label" default="Hora" />
		
	</label>
	<g:textField name="hora" value="${cita?.hora}" />

</div>

<div class="fieldcontain ${hasErrors(bean: cita, field: 'minuto', 'error')} ">
	<label for="minuto">
		<g:message code="cita.minuto.label" default="Minuto" />
		
	</label>
	<g:textField name="minuto" value="${cita?.minuto}" />

</div>

<div class="fieldcontain ${hasErrors(bean: cita, field: 'paciente', 'error')} ">
	<label for="paciente">
		<g:message code="cita.paciente.label" default="Paciente" />
		
	</label>
	<g:select id="paciente" name="paciente.id" from="${paciente.Paciente.list()}" optionKey="id" required="" value="${cita?.paciente?.id}" class="many-to-one"/>

</div>

