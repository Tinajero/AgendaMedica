package paciente



import static org.springframework.http.HttpStatus.*
import domicilio.Domicilio
import expediente.Expediente
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PacienteController {
	def domicilioService
	def expedienteService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Paciente.list(params), model:[pacienteCount: Paciente.count(), pacienteList: Paciente.list(params)]
    }

    def show(Paciente paciente) {
        respond paciente, model:[paciente:paciente]
    }

    def create() {
        respond new Paciente(params), model :[paciente:new Paciente(params)]
    }

    @Transactional
    def save(Paciente paciente) {
        if (paciente == null) {
            notFound()
            return
        }
		println "calle " + params.calle
		Domicilio domicilio = new Domicilio(params)
//		domicilio.calle = params.calle
//		domicilio.estado = params.estado
//		domicilio.lo
		println domicilio.calle
		if(  domicilio.hasErrors() ){
			respond paciente.errors, view:'create',  model:[ paciente : paciente, domicilio:domicilio]
			return
		}
		domicilioService.save(domicilio)
		paciente.domicilio = domicilio
		Expediente expediente = new Expediente();
		expediente.numeroExpediente = "123456"
		expedienteService.save(expediente)
		paciente.expediente = expediente
		paciente.validate()
        if (paciente.hasErrors()  ) {
			
            respond paciente.errors, view:'create',  model:[ paciente : paciente, domicilio:domicilio]
            return
        }
		
        paciente.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'paciente.label', default: 'Paciente'), paciente.id])
                redirect paciente
            }
            '*' { respond paciente, [status: CREATED] }
        }
    }

    def edit(Paciente paciente) {
        respond paciente,  model:[paciente:paciente, domicilio:paciente.domicilio]
    }

    @Transactional
    def update(Paciente paciente) {
        if (paciente == null) {
            notFound()
            return
        }

        if (paciente.hasErrors()) {
            respond paciente.errors, view:'edit',  model:[paciente:paciente]
            return
        }

        paciente.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Paciente.label', default: 'Paciente'), paciente.id])
                redirect paciente
            }
            '*'{ respond paciente, [status: OK] }
        }
    }

    @Transactional
    def delete(Paciente paciente) {

        if (paciente == null) {
            notFound()
            return
        }

        paciente.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Paciente.label', default: 'Paciente'), paciente.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
