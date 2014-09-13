package doctor



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DoctorController {
	// con esto cpodemos acceder a los servicios de doctor, que estan en la carpeta de Services
	// y desde cualquier lugar de la aplicacion
	// pues grails lo toma asi de simple
	static doctorService
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	/**
	 * Todos estos metodos son creados por el scaffoling que se le agrego en la conf/buildConfig.groovy, en donde dice plugins
	 * 
	 */
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		// e notado que no le envia las cosas a la vista asi que es necesario enviarle las cosas a la vista desde el 
		// mapa que se le envia en este caso se necesitaba en la vista que index, que tiene una variable llamada
		// doctorList la cual contiene la informacion de la base de datos , pero para eso es necesario enviarselo con el
		//  doctorList:Doctor.list(params), que esta ahi en la variable model, entre corches
        //respond Doctor.list(params), model:[doctorCount: Doctor.count(),  doctorList:Doctor.list(params) ]
		respond Doctor.list(params), model:[doctorCount:Doctor.count(), doctorList : doctorService.list(params) ]
    }

    def show(Doctor doctor) {
		// lo mismo para este, en la vista show , le queria enviar al doctor que acaba de crear
		// pero por alguna razon el scaffol no lo hace bien
		// por eso le agregue la linea a lo que me creo el scaffol
		// model:[doctor:doctor]
        respond doctor, model:[doctor:doctor]
    }

    def create() {
        respond new Doctor(params)
    }

    @Transactional
    def save(Doctor doctor) {
        if (doctor == null) {
            notFound()
            return
        }

        if (doctor.hasErrors()) {
            respond doctor.errors, view:'create', model:[doctor:doctor]
            return
        }

        //doctor.save flush:true // esta linea la tenia el scaffol
		//agrege esta para que lo haga el service
		// despues se le puede hacer que el service maneje el error en caso de haber 
		// aunque se puede hacer aqui en el controller, pero ahi se los dejo que me digan donde
		// a mi se me facilita aqui cachando si se pudo o no , pero el pes es que no sabemos que error tuvo
		doctorService.save(doctor)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'doctor.label', default: 'Doctor'), doctor.id])
                redirect doctor
            }
            '*' { respond doctor, [status: CREATED] }
        }
    }

    def edit(Doctor doctor) {
        respond doctor, model:[doctor:doctor]
    }

    @Transactional
    def update(Doctor doctor) {
        if (doctor == null) {
            notFound()
            return
        }

        if (doctor.hasErrors()) {
			println "tiene errores"
            respond doctor.errors, view:'edit', model:[doctor:doctor]
            return
        }

        //doctor.save flush:true
		doctorService.save(doctor)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Doctor.label', default: 'Doctor'), doctor.id])
                redirect doctor
            }
            '*'{ respond doctor, [status: OK] }
        }
    }

    @Transactional
    def delete(Doctor doctor) {

        if (doctor == null) {
            notFound()
            return
        }

        //doctor.delete flush:true
		doctorService.delete(doctor)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Doctor.label', default: 'Doctor'), doctor.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'doctor.label', default: 'Doctor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
