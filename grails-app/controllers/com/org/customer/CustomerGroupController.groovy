package com.org.customer

import com.uma.Person
import grails.transaction.Transactional
import util.Util

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class CustomerGroupController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CustomerGroup.list(params), model:[customerGroupInstanceCount: CustomerGroup.count()]
    }

    def show(CustomerGroup customerGroupInstance) {
        respond customerGroupInstance
    }

    def create() {
        respond new CustomerGroup(params)
    }

    @Transactional
    def save(CustomerGroup customerGroupInstance) {

        def curUser =springSecurityService.getCurrentUser()
        Person person=Person.read(curUser.id)
        customerGroupInstance=new CustomerGroup(params)
        customerGroupInstance.insertUser=person
        Util util=new Util()
        customerGroupInstance.insertIp=util.getIpAddress(request)
        customerGroupInstance.insertMachine=util.getMachineName()

        if (customerGroupInstance.hasErrors()) {
            respond customerGroupInstance.errors, view:'create'
            return
        }

        customerGroupInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customerGroup.label', default: 'CustomerGroup'), customerGroupInstance.id])
                redirect customerGroupInstance
            }
            '*' { respond customerGroupInstance, [status: CREATED] }
        }
    }

    def edit(CustomerGroup customerGroupInstance) {
        respond customerGroupInstance
    }

    @Transactional
    def update(CustomerGroup customerGroupInstance) {
        if (customerGroupInstance == null) {
            notFound()
            return
        }

        if (customerGroupInstance.hasErrors()) {
            respond customerGroupInstance.errors, view:'edit'
            return
        }

        customerGroupInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CustomerGroup.label', default: 'CustomerGroup'), customerGroupInstance.id])
                redirect customerGroupInstance
            }
            '*'{ respond customerGroupInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CustomerGroup customerGroupInstance) {

        if (customerGroupInstance == null) {
            notFound()
            return
        }

        customerGroupInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CustomerGroup.label', default: 'CustomerGroup'), customerGroupInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerGroup.label', default: 'CustomerGroup'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
