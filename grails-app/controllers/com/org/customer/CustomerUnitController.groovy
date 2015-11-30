package com.org.customer

import com.uma.Person
import util.Util

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CustomerUnitController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CustomerUnit.list(params), model: [customerUnitInstanceCount: CustomerUnit.count()]
    }

    def show(CustomerUnit customerUnitInstance) {
        respond customerUnitInstance
    }

    def create() {
        respond new CustomerUnit(params)
    }

    @Transactional
    def save(CustomerUnit customerUnitInstance) {
        if (customerUnitInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            customerUnitInstance.properties["insertUser"]=person
            Util util=new Util()
            customerUnitInstance.insertIp=util.getIpAddress(request)
            customerUnitInstance.insertMachine=util.getMachineName()
        }


        if (customerUnitInstance.hasErrors()) {
            respond customerUnitInstance.errors, view: 'create'
            return
        }

        customerUnitInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customerUnit.label', default: 'CustomerUnit'), customerUnitInstance.id])
                redirect customerUnitInstance
            }
            '*' { respond customerUnitInstance, [status: CREATED] }
        }
    }

    def edit(CustomerUnit customerUnitInstance) {
        respond customerUnitInstance
    }

    @Transactional
    def update(CustomerUnit customerUnitInstance) {
        if (customerUnitInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            customerUnitInstance.properties["updateUser"]=person
            Util util=new Util()
            customerUnitInstance.updateIp=util.getIpAddress(request)
            customerUnitInstance.updateMachine=util.getMachineName()

        }


        if (customerUnitInstance.hasErrors()) {
            respond customerUnitInstance.errors, view: 'edit'
            return
        }

        customerUnitInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CustomerUnit.label', default: 'CustomerUnit'), customerUnitInstance.id])
                redirect customerUnitInstance
            }
            '*' { respond customerUnitInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CustomerUnit customerUnitInstance) {

        if (customerUnitInstance == null) {
            notFound()
            return
        }

        customerUnitInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CustomerUnit.label', default: 'CustomerUnit'), customerUnitInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerUnit.label', default: 'CustomerUnit'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
