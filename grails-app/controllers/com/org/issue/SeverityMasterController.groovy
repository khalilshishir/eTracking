package com.org.issue


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SeverityMasterController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SeverityMaster.list(params), model: [severityMasterInstanceCount: SeverityMaster.count()]
    }

    def show(SeverityMaster severityMasterInstance) {
        respond severityMasterInstance
    }

    def create() {
        respond new SeverityMaster(params)
    }

    @Transactional
    def save(SeverityMaster severityMasterInstance) {
        if (severityMasterInstance == null) {
            notFound()
            return
        }

        if (severityMasterInstance.hasErrors()) {
            respond severityMasterInstance.errors, view: 'create'
            return
        }

        severityMasterInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'severityMaster.label', default: 'SeverityMaster'), severityMasterInstance.id])
                redirect severityMasterInstance
            }
            '*' { respond severityMasterInstance, [status: CREATED] }
        }
    }

    def edit(SeverityMaster severityMasterInstance) {
        respond severityMasterInstance
    }

    @Transactional
    def update(SeverityMaster severityMasterInstance) {
        if (severityMasterInstance == null) {
            notFound()
            return
        }

        if (severityMasterInstance.hasErrors()) {
            respond severityMasterInstance.errors, view: 'edit'
            return
        }

        severityMasterInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SeverityMaster.label', default: 'SeverityMaster'), severityMasterInstance.id])
                redirect severityMasterInstance
            }
            '*' { respond severityMasterInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SeverityMaster severityMasterInstance) {

        if (severityMasterInstance == null) {
            notFound()
            return
        }

        severityMasterInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SeverityMaster.label', default: 'SeverityMaster'), severityMasterInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'severityMaster.label', default: 'SeverityMaster'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
