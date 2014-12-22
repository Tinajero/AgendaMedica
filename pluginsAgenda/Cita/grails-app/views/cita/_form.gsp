<%@ page import="cita.Cita" %>



<div class="fieldcontain ${hasErrors(bean: cita, field: 'paciente', 'error')} ">
	<label for="paciente">
		<g:message code="cita.paciente.label" default="Nombre del Paciente" />
		
	</label>
	<g:select id="paciente" name="paciente.id" from="${paciente.Paciente.list()}" optionValue="${{it.nombre+" "+it.apellidoPaterno+" "+it.apellidoMaterno}}" optionKey="id" required="" value="${cita?.paciente?.id}" class="many-to-one"/>
	
</div>

<div class="fieldcontain ${hasErrors(bean: cita, field: 'expediente', 'error')} ">
	<label for="expediente">
		<g:message code="cita.expediente.label" default="Número de Expediente" />
		
	</label>
	<g:select id="expediente" name="expediente.id" from="${expediente.Expediente.list()}" optionValue="numeroExpediente" optionKey="id" required="" value="${cita?.expediente?.id}" class="many-to-one"/>
	
</div>

<div class="fieldcontain ${hasErrors(bean: cita, field: 'doctor', 'error')} ">
	<label for="doctor">
		<g:message code="cita.doctor.label" default="Médico Disponible" />
		
	</label>
	<g:select id="doctor" name="doctor.id" from="${doctor.Doctor.list()}" optionValue="${{it.nombre+" "+it.apellidoPaterno+" "+it.apellidoMaterno}}" optionKey="id" required="" value="${cita?.doctor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cita, field: 'fecha', 'error')} ">
	<label for="fecha">
		<g:message code="cita.fecha.label" default="Fecha de Cita" />
		
	</label>
	<g:datePicker name="fecha" precision="day" value="${cita?.fecha}" />

</div>
