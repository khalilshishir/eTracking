package com.org.issue


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class IssueAreaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond IssueArea.list(params), model: [issueAreaInstanceCount: IssueArea.count()]
    }

    def show(IssueArea issueAreaInstance) {
        respond issueAreaInstance
    }

    def create() {
        respond new IssueArea(params)
    }

    @Transactional
    def save(IssueArea issueAreaInstance) {
        if (issueAreaInstance == null) {
            notFound()
            return
        }

        if (issueAreaInstance.hasErrors()) {
            respond issueAreaInstance.errors, view: 'create'
            return
        }

        issueAreaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'issueArea.label', default: 'IssueArea'), issueAreaInstance.id])
                redirect issueAreaInstance
            }
            '*' { respond issueAreaInstance, [status: CREATED] }
        }
    }

    def edit(IssueArea issueAreaInstance) {
        respond issueAreaInstance
    }

    @Transactional
    def update(IssueArea issueAreaInstance) {
        if (issueAreaInstance == null) {
            notFound()
            return
        }

        if (issueAreaInstance.hasErrors()) {
            respond issueAreaInstance.errors, view: 'edit'
            return
        }

        issueAreaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'IssueArea.label', default: 'IssueArea'), issueAreaInstance.id])
                redirect issueAreaInstance
            }
            '*' { respond issueAreaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(IssueArea issueAreaInstance) {

        if (issueAreaInstance == null) {
            notFound()
            return
        }

        issueAreaInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'IssueArea.label', default: 'IssueArea'), issueAreaInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'issueArea.label', default: 'IssueArea'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
