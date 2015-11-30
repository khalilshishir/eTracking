package com.org.settings

import com.uma.Person
import util.Util

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LookupController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Lookup.list(params), model:[lookupInstanceCount: Lookup.count()]
    }

    def show(Lookup lookupInstance) {
        respond lookupInstance
    }

    def create() {
        respond new Lookup(params)
    }

    @Transactional
    def save(Lookup lookupInstance) {
        if (lookupInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            lookupInstance.properties["insertUser"]=person
            Util util=new Util()
            lookupInstance.insertIp=util.getIpAddress(request)
            lookupInstance.insertMachine=util.getMachineName()
        }

        if (lookupInstance.hasErrors()) {
            respond lookupInstance.errors, view:'create'
            return
        }

        lookupInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'lookup.label', default: 'Lookup'), lookupInstance.id])
                redirect lookupInstance
            }
            '*' { respond lookupInstance, [status: CREATED] }
        }
    }

    def edit(Lookup lookupInstance) {
        respond lookupInstance
    }

    @Transactional
    def update(Lookup lookupInstance) {
        if (lookupInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            lookupInstance.properties["updateUser"]=person
            Util util=new Util()
            lookupInstance.updateIp=util.getIpAddress(request)
            lookupInstance.updateMachine=util.getMachineName()

        }

        if (lookupInstance.hasErrors()) {
            respond lookupInstance.errors, view:'edit'
            return
        }

        lookupInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Lookup.label', default: 'Lookup'), lookupInstance.id])
                redirect lookupInstance
            }
            '*'{ respond lookupInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Lookup lookupInstance) {

        if (lookupInstance == null) {
            notFound()
            return
        }

        lookupInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Lookup.label', default: 'Lookup'), lookupInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'lookup.label', default: 'Lookup'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
