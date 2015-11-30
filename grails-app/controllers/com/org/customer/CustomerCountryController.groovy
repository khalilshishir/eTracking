package com.org.customer

import com.uma.Person
import util.Util

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CustomerCountryController {
def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CustomerCountry.list(params), model: [customerCountryInstanceCount: CustomerCountry.count()]
    }

    def show(CustomerCountry customerCountryInstance) {
        respond customerCountryInstance
    }

    def create() {
        respond new CustomerCountry(params)
    }

    @Transactional
    def save(CustomerCountry customerCountryInstance) {

        def curUser =springSecurityService.getCurrentUser()
        Person person=Person.read(curUser.id)
        customerCountryInstance=new CustomerCountry(params)
        customerCountryInstance.insertUser=person
        Util util=new Util()
        customerCountryInstance.insertIp=util.getIpAddress(request)
        customerCountryInstance.insertMachine=util.getMachineName()


        if (customerCountryInstance.hasErrors()) {
            respond customerCountryInstance.errors, view: 'create'
            return
        }

        customerCountryInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customerCountry.label', default: 'CustomerCountry'), customerCountryInstance.id])
                redirect customerCountryInstance
            }
            '*' { respond customerCountryInstance, [status: CREATED] }
        }
    }

    def edit(CustomerCountry customerCountryInstance) {
        respond customerCountryInstance
    }

    @Transactional
    def update(CustomerCountry customerCountryInstance) {
        if (customerCountryInstance == null) {
            notFound()
            return
        }

        if (customerCountryInstance.hasErrors()) {
            respond customerCountryInstance.errors, view: 'edit'
            return
        }

        customerCountryInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CustomerCountry.label', default: 'CustomerCountry'), customerCountryInstance.id])
                redirect customerCountryInstance
            }
            '*' { respond customerCountryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CustomerCountry customerCountryInstance) {

        if (customerCountryInstance == null) {
            notFound()
            return
        }

        customerCountryInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CustomerCountry.label', default: 'CustomerCountry'), customerCountryInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerCountry.label', default: 'CustomerCountry'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
