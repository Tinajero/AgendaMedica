package cita



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import doctor.Doctor
import expediente.Expediente
import paciente.Paciente
@Transactional(readOnly = true)
class CitaController {
	def doctorService
	def expedienteService
	def pacienteService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        //respond Cita.list(params), model:[citaCount: Cita.count()]
		respond Cita.list(params), model:[citaCount: Cita.count(), citaList: Cita.list(params)]
    }

    def show(Cita cita) {
        //respond cita
		respond cita, model:[cita:cita]
    }

    def create() {
        //respond new Cita(params)
		respond new Cita(params), model :[cita:new Cita(params)]
    }

    @Transactional
    def save(Cita cita) {
        if (cita == null) {
            notFound()
            return
        }
		//Paciente paciente = new Paciente(params)
		//Doctor doctor = new Doctor(params)
		//Expediente expediente = new Expediente(params)

        if (cita.hasErrors()) {
            //respond cita.errors, view:'create'
			respond cita.errors, view:'create', model:[cita:cita, doctor:doctor, paciente:paciente, expediente:expediente]
            return
        }

        cita.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cita.label', default: 'Cita'), cita.id])
                redirect cita
            }
            '*' { respond cita, [status: CREATED] }
        }
    }

    def edit(Cita cita) {
        //respond cita
		respond cita, model:[cita:cita, doctor:cita.doctor, expediente:cita.expediente, paciente:cita.paciente]
    }

    @Transactional
    def update(Cita cita) {
        if (cita == null) {
            notFound()
            return
        }

        if (cita.hasErrors()) {
            //respond cita.errors, view:'edit'
			respond cita.errors, view:'edit', model:[cita:cita]
            return
        }

        cita.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cita.label', default: 'Cita'), cita.id])
                redirect cita
            }
            '*'{ respond cita, [status: OK] }
        }
    }

    @Transactional
    def delete(Cita cita) {

        if (cita == null) {
            notFound()
            return
        }

        cita.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Cita.label', default: 'Cita'), cita.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cita.label', default: 'Cita'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
