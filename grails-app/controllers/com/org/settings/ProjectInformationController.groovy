package com.org.settings

import com.uma.Person
import util.Util

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProjectInformationController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProjectInformation.list(params), model: [projectInformationInstanceCount: ProjectInformation.count()]
    }

    def show(ProjectInformation projectInformationInstance) {
        respond projectInformationInstance
    }

    def create() {
        respond new ProjectInformation(params)
    }

    @Transactional
    def save(ProjectInformation projectInformationInstance) {
        if (projectInformationInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            projectInformationInstance.properties["insertUser"]=person
            Util util=new Util()
            projectInformationInstance.insertIp=util.getIpAddress(request)
            projectInformationInstance.insertMachine=util.getMachineName()
        }

        if (projectInformationInstance.hasErrors()) {
            respond projectInformationInstance.errors, view: 'create'
            return
        }

        projectInformationInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'projectInformation.label', default: 'ProjectInformation'), projectInformationInstance.id])
                redirect projectInformationInstance
            }
            '*' { respond projectInformationInstance, [status: CREATED] }
        }
    }

    def edit(ProjectInformation projectInformationInstance) {
        respond projectInformationInstance
    }

    @Transactional
    def update(ProjectInformation projectInformationInstance) {
        if (projectInformationInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            projectInformationInstance.properties["updateUser"]=person
            Util util=new Util()
            projectInformationInstance.updateIp=util.getIpAddress(request)
            projectInformationInstance.updateMachine=util.getMachineName()

        }

        if (projectInformationInstance.hasErrors()) {
            respond projectInformationInstance.errors, view: 'edit'
            return
        }

        projectInformationInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProjectInformation.label', default: 'ProjectInformation'), projectInformationInstance.id])
                redirect projectInformationInstance
            }
            '*' { respond projectInformationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProjectInformation projectInformationInstance) {

        if (projectInformationInstance == null) {
            notFound()
            return
        }

        projectInformationInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProjectInformation.label', default: 'ProjectInformation'), projectInformationInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'projectInformation.label', default: 'ProjectInformation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
