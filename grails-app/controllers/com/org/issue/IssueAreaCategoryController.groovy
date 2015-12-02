package com.org.issue



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class IssueAreaCategoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond IssueAreaCategory.list(params), model:[issueAreaCategoryInstanceCount: IssueAreaCategory.count()]
    }

    def show(IssueAreaCategory issueAreaCategoryInstance) {
        respond issueAreaCategoryInstance
    }

    def create() {
        respond new IssueAreaCategory(params)
    }

    @Transactional
    def save(IssueAreaCategory issueAreaCategoryInstance) {
        if (issueAreaCategoryInstance == null) {
            notFound()
            return
        }

        if (issueAreaCategoryInstance.hasErrors()) {
            respond issueAreaCategoryInstance.errors, view:'create'
            return
        }

        issueAreaCategoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'issueAreaCategory.label', default: 'IssueAreaCategory'), issueAreaCategoryInstance.id])
                redirect issueAreaCategoryInstance
            }
            '*' { respond issueAreaCategoryInstance, [status: CREATED] }
        }
    }

    def edit(IssueAreaCategory issueAreaCategoryInstance) {
        respond issueAreaCategoryInstance
    }

    @Transactional
    def update(IssueAreaCategory issueAreaCategoryInstance) {
        if (issueAreaCategoryInstance == null) {
            notFound()
            return
        }

        if (issueAreaCategoryInstance.hasErrors()) {
            respond issueAreaCategoryInstance.errors, view:'edit'
            return
        }

        issueAreaCategoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'IssueAreaCategory.label', default: 'IssueAreaCategory'), issueAreaCategoryInstance.id])
                redirect issueAreaCategoryInstance
            }
            '*'{ respond issueAreaCategoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(IssueAreaCategory issueAreaCategoryInstance) {

        if (issueAreaCategoryInstance == null) {
            notFound()
            return
        }

        issueAreaCategoryInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'IssueAreaCategory.label', default: 'IssueAreaCategory'), issueAreaCategoryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'issueAreaCategory.label', default: 'IssueAreaCategory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
