package catalogocita



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CatalogocitaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Catalogocita.list(params), model:[catalogocitaCount: Catalogocita.count()]
    }

    def show(Catalogocita catalogocita) {
        respond catalogocita
    }

    def create() {
        respond new Catalogocita(params)
    }

    @Transactional
    def save(Catalogocita catalogocita) {
        if (catalogocita == null) {
            notFound()
            return
        }

        if (catalogocita.hasErrors()) {
            respond catalogocita.errors, view:'create'
            return
        }

        catalogocita.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'catalogocita.label', default: 'Catalogocita'), catalogocita.id])
                redirect catalogocita
            }
            '*' { respond catalogocita, [status: CREATED] }
        }
    }

    def edit(Catalogocita catalogocita) {
        respond catalogocita
    }

    @Transactional
    def update(Catalogocita catalogocita) {
        if (catalogocita == null) {
            notFound()
            return
        }

        if (catalogocita.hasErrors()) {
            respond catalogocita.errors, view:'edit'
            return
        }

        catalogocita.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Catalogocita.label', default: 'Catalogocita'), catalogocita.id])
                redirect catalogocita
            }
            '*'{ respond catalogocita, [status: OK] }
        }
    }

    @Transactional
    def delete(Catalogocita catalogocita) {

        if (catalogocita == null) {
            notFound()
            return
        }

        catalogocita.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Catalogocita.label', default: 'Catalogocita'), catalogocita.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'catalogocita.label', default: 'Catalogocita'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
