package com.org.customer

import com.uma.Person
import util.Util

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CustomerZoneController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CustomerZone.list(params), model: [customerZoneInstanceCount: CustomerZone.count()]
    }

    def show(CustomerZone customerZoneInstance) {
        respond customerZoneInstance
    }

    def create() {
        respond new CustomerZone(params)
    }

    @Transactional
    def save(CustomerZone customerZoneInstance) {
        if (customerZoneInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            customerZoneInstance.properties["insertUser"]=person
            Util util=new Util()
            customerZoneInstance.insertIp=util.getIpAddress(request)
            customerZoneInstance.insertMachine=util.getMachineName()
        }



        if (customerZoneInstance.hasErrors()) {
            respond customerZoneInstance.errors, view: 'create'
            return
        }

        customerZoneInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customerZone.label', default: 'CustomerZone'), customerZoneInstance.id])
                redirect customerZoneInstance
            }
            '*' { respond customerZoneInstance, [status: CREATED] }
        }
    }

    def edit(CustomerZone customerZoneInstance) {
        respond customerZoneInstance
    }

    @Transactional
    def update(CustomerZone customerZoneInstance) {
        if (customerZoneInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            customerZoneInstance.properties["updateUser"]=person
            Util util=new Util()
            customerZoneInstance.updateIp=util.getIpAddress(request)
            customerZoneInstance.updateMachine=util.getMachineName()

        }

        if (customerZoneInstance.hasErrors()) {
            respond customerZoneInstance.errors, view: 'edit'
            return
        }

        customerZoneInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CustomerZone.label', default: 'CustomerZone'), customerZoneInstance.id])
                redirect customerZoneInstance
            }
            '*' { respond customerZoneInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CustomerZone customerZoneInstance) {

        if (customerZoneInstance == null) {
            notFound()
            return
        }

        customerZoneInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CustomerZone.label', default: 'CustomerZone'), customerZoneInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerZone.label', default: 'CustomerZone'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
