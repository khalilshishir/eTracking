package com.org.customer

import com.uma.Person
import util.Util

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CustomerCompanyController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CustomerCompany.list(params), model: [customerCompanyInstanceCount: CustomerCompany.count()]
    }

    def show(CustomerCompany customerCompanyInstance) {
        respond customerCompanyInstance
    }

    def create() {
        respond new CustomerCompany(params)
    }

    @Transactional
    def save(CustomerCompany customerCompanyInstance) {
        if (customerCompanyInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            customerCompanyInstance.properties["insertUser"]=person
            Util util=new Util()
            customerCompanyInstance.insertIp=util.getIpAddress(request)
            customerCompanyInstance.insertMachine=util.getMachineName()
        }


        if (customerCompanyInstance.hasErrors()) {
            respond customerCompanyInstance.errors, view: 'create'
            return
        }

        customerCompanyInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customerCompany.label', default: 'CustomerCompany'), customerCompanyInstance.id])
                redirect customerCompanyInstance
            }
            '*' { respond customerCompanyInstance, [status: CREATED] }
        }
    }

    def edit(CustomerCompany customerCompanyInstance) {
        respond customerCompanyInstance
    }

    @Transactional
    def update(CustomerCompany customerCompanyInstance) {
        if (customerCompanyInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            customerCompanyInstance.properties["updateUser"]=person
            Util util=new Util()
            customerCompanyInstance.updateIp=util.getIpAddress(request)
            customerCompanyInstance.updateMachine=util.getMachineName()

        }

        if (customerCompanyInstance.hasErrors()) {
            respond customerCompanyInstance.errors, view: 'edit'
            return
        }

        customerCompanyInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CustomerCompany.label', default: 'CustomerCompany'), customerCompanyInstance.id])
                redirect customerCompanyInstance
            }
            '*' { respond customerCompanyInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CustomerCompany customerCompanyInstance) {

        if (customerCompanyInstance == null) {
            notFound()
            return
        }

        customerCompanyInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CustomerCompany.label', default: 'CustomerCompany'), customerCompanyInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerCompany.label', default: 'CustomerCompany'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
