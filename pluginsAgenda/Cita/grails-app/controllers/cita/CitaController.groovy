package cita



import static org.springframework.http.HttpStatus.*
import cita.Cita;
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CitaController {
	
	static citaService
	
	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
		def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
	
		respond Cita.list(params), model:[citaCount:Cita.count(), citaList : citaService.list(params) ]
	}

	def show(Cita cita) {
	
		respond cita, model:[cita:cita]
	}

	def create() {
		respond new Cita(params)
	}

	@Transactional
	def save(Cita cita) {
		if (cita == null) {
			notFound()
			return
		}

		if (cita.hasErrors()) {
			respond cita.errors, view:'create', model:[cita:cita]
			return
		}
//llamando  a servicio
	citaService.save(cita)

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [message(code: 'cita.label', default: 'Cita'), cita.id])
				redirect cita
			}
			'*' { respond cita, [status: CREATED] }
		}
	}

	def edit(Cita cita) {
		respond cita, model:[cita:cita]
	}

	@Transactional
	def update(Cita cita) {
		if (cita == null) {
			notFound()
			return
		}

		if (cita.hasErrors()) {
			println "tiene errores"
			respond cita.errors, view:'edit', model:[cita:cita]
			return
		}


//otra llamada a serevicio
		citaService.save(cita)

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

		//cita.delete flush:true
		citaService.delete(cita)

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
