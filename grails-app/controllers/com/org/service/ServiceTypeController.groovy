package com.org.service

import com.uma.Person
import util.Util

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ServiceTypeController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ServiceType.list(params), model:[serviceTypeInstanceCount: ServiceType.count()]
    }

    def show(ServiceType serviceTypeInstance) {
        respond serviceTypeInstance
    }

    def create() {
        respond new ServiceType(params)
    }

    @Transactional
    def save(ServiceType serviceTypeInstance) {
        if (serviceTypeInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            serviceTypeInstance.properties["insertUser"]=person
            Util util=new Util()
            serviceTypeInstance.insertIp=util.getIpAddress(request)
            serviceTypeInstance.insertMachine=util.getMachineName()
        }

        if (serviceTypeInstance.hasErrors()) {
            respond serviceTypeInstance.errors, view:'create'
            return
        }

        serviceTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'serviceType.label', default: 'ServiceType'), serviceTypeInstance.id])
                redirect serviceTypeInstance
            }
            '*' { respond serviceTypeInstance, [status: CREATED] }
        }
    }

    def edit(ServiceType serviceTypeInstance) {
        respond serviceTypeInstance
    }

    @Transactional
    def update(ServiceType serviceTypeInstance) {
        if (serviceTypeInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            serviceTypeInstance.properties["updateUser"]=person
            Util util=new Util()
            serviceTypeInstance.updateIp=util.getIpAddress(request)
            serviceTypeInstance.updateMachine=util.getMachineName()

        }

        if (serviceTypeInstance.hasErrors()) {
            respond serviceTypeInstance.errors, view:'edit'
            return
        }

        serviceTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ServiceType.label', default: 'ServiceType'), serviceTypeInstance.id])
                redirect serviceTypeInstance
            }
            '*'{ respond serviceTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ServiceType serviceTypeInstance) {

        if (serviceTypeInstance == null) {
            notFound()
            return
        }

        serviceTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ServiceType.label', default: 'ServiceType'), serviceTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceType.label', default: 'ServiceType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
