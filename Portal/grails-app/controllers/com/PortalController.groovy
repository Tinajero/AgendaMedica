package com



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PortalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Portal.list(params), model:[portalInstanceCount: Portal.count()]
    }

    def show(Portal portalInstance) {
        respond portalInstance
    }

    def create() {
        respond new Portal(params)
    }

    @Transactional
    def save(Portal portalInstance) {
        if (portalInstance == null) {
            notFound()
            return
        }

        if (portalInstance.hasErrors()) {
            respond portalInstance.errors, view:'create'
            return
        }

        portalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'portal.label', default: 'Portal'), portalInstance.id])
                redirect portalInstance
            }
            '*' { respond portalInstance, [status: CREATED] }
        }
    }

    def edit(Portal portalInstance) {
        respond portalInstance
    }

    @Transactional
    def update(Portal portalInstance) {
        if (portalInstance == null) {
            notFound()
            return
        }

        if (portalInstance.hasErrors()) {
            respond portalInstance.errors, view:'edit'
            return
        }

        portalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Portal.label', default: 'Portal'), portalInstance.id])
                redirect portalInstance
            }
            '*'{ respond portalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Portal portalInstance) {

        if (portalInstance == null) {
            notFound()
            return
        }

        portalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Portal.label', default: 'Portal'), portalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'portal.label', default: 'Portal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
