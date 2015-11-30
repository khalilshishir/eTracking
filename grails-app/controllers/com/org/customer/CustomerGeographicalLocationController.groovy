package com.org.customer

import com.uma.Person
import util.Util

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CustomerGeographicalLocationController {
def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CustomerGeographicalLocation.list(params), model: [customerGeographicalLocationInstanceCount: CustomerGeographicalLocation.count()]
    }

    def show(CustomerGeographicalLocation customerGeographicalLocationInstance) {
        respond customerGeographicalLocationInstance
    }

    def create() {


        respond new CustomerGeographicalLocation(params)
    }

    @Transactional
    def save(CustomerGeographicalLocation customerGeographicalLocationInstance) {
        if (customerGeographicalLocationInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            customerGeographicalLocationInstance.properties["insertUser"]=person
            Util util=new Util()
            customerGeographicalLocationInstance.insertIp=util.getIpAddress(request)
            customerGeographicalLocationInstance.insertMachine=util.getMachineName()
            if(!customerGeographicalLocationInstance.distCode&&!customerGeographicalLocationInstance.thanaCode){
                customerGeographicalLocationInstance.geoCode=util.getGeoCode(customerGeographicalLocationInstance.divCode)
            }else  if(customerGeographicalLocationInstance.distCode&&!customerGeographicalLocationInstance.thanaCode){
                customerGeographicalLocationInstance.geoCode=util.getGeoCode(customerGeographicalLocationInstance.divCode,customerGeographicalLocationInstance.distCode)
            }else  if(customerGeographicalLocationInstance.distCode&&customerGeographicalLocationInstance.thanaCode){
                customerGeographicalLocationInstance.geoCode=util.getGeoCode(customerGeographicalLocationInstance.divCode,customerGeographicalLocationInstance.distCode,customerGeographicalLocationInstance.thanaCode)
            }
        }

        if (customerGeographicalLocationInstance.hasErrors()) {
            respond customerGeographicalLocationInstance.errors, view: 'create'
            return
        }

        customerGeographicalLocationInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customerGeographicalLocation.label', default: 'CustomerGeographicalLocation'), customerGeographicalLocationInstance.id])
                redirect customerGeographicalLocationInstance
            }
            '*' { respond customerGeographicalLocationInstance, [status: CREATED] }
        }
    }

    def edit(CustomerGeographicalLocation customerGeographicalLocationInstance) {
        respond customerGeographicalLocationInstance
    }

    @Transactional
    def update(CustomerGeographicalLocation customerGeographicalLocationInstance) {
        if (customerGeographicalLocationInstance == null) {
            notFound()
            return

        }else{
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            customerGeographicalLocationInstance.properties["updateUser"]=person
            Util util=new Util()
            customerGeographicalLocationInstance.updateIp=util.getIpAddress(request)
            customerGeographicalLocationInstance.updateMachine=util.getMachineName()

        }



        if (customerGeographicalLocationInstance.hasErrors()) {
            respond customerGeographicalLocationInstance.errors, view: 'edit'
            return
        }

        customerGeographicalLocationInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CustomerGeographicalLocation.label', default: 'CustomerGeographicalLocation'), customerGeographicalLocationInstance.id])
                redirect customerGeographicalLocationInstance
            }
            '*' { respond customerGeographicalLocationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CustomerGeographicalLocation customerGeographicalLocationInstance) {

        if (customerGeographicalLocationInstance == null) {
            notFound()
            return
        }

        customerGeographicalLocationInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CustomerGeographicalLocation.label', default: 'CustomerGeographicalLocation'), customerGeographicalLocationInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerGeographicalLocation.label', default: 'CustomerGeographicalLocation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
