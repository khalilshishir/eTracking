package com.org.service

import com.org.customer.CustomerCompany
import com.org.customer.CustomerInformation

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ServiceItemMasterController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ServiceItemMaster.list(params), model: [serviceItemMasterInstanceCount: ServiceItemMaster.count()]
    }

    def show(ServiceItemMaster serviceItemMasterInstance) {
        respond serviceItemMasterInstance
    }

    def create() {
        respond new ServiceItemMaster(params)
    }

    @Transactional
    def save(ServiceItemMaster serviceItemMasterInstance) {
        if (serviceItemMasterInstance == null) {
            notFound()
            return
        }

        if (serviceItemMasterInstance.hasErrors()) {
            respond serviceItemMasterInstance.errors, view: 'create'
            return
        }

        serviceItemMasterInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'serviceItemMaster.label', default: 'ServiceItemMaster'), serviceItemMasterInstance.id])
                redirect serviceItemMasterInstance
            }
            '*' { respond serviceItemMasterInstance, [status: CREATED] }
        }
    }

    def edit(ServiceItemMaster serviceItemMasterInstance) {
        respond serviceItemMasterInstance
    }

    @Transactional
    def update(ServiceItemMaster serviceItemMasterInstance) {
        if (serviceItemMasterInstance == null) {
            notFound()
            return
        }

        if (serviceItemMasterInstance.hasErrors()) {
            respond serviceItemMasterInstance.errors, view: 'edit'
            return
        }

        serviceItemMasterInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ServiceItemMaster.label', default: 'ServiceItemMaster'), serviceItemMasterInstance.id])
                redirect serviceItemMasterInstance
            }
            '*' { respond serviceItemMasterInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ServiceItemMaster serviceItemMasterInstance) {

        if (serviceItemMasterInstance == null) {
            notFound()
            return
        }

        serviceItemMasterInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ServiceItemMaster.label', default: 'ServiceItemMaster'), serviceItemMasterInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceItemMaster.label', default: 'ServiceItemMaster'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def getCustomerByCompany(){
        String options = "<option value=''>Select One</option>"
        CustomerCompany company=CustomerCompany.get(params.companyId)
        def customer=CustomerInformation.findAllByCompany(company)
        customer.each {
            options += "<option value='"+it.id+"'>"+it.custName+"</option>"
        }
        render options
    }

}
