package com.org.item

import com.uma.Person
import util.Util

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ItemBrandController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ItemBrand.list(params), model:[itemBrandInstanceCount: ItemBrand.count()]
    }

    def show(ItemBrand itemBrandInstance) {
        respond itemBrandInstance
    }

    def create() {
        respond new ItemBrand(params)
    }

    @Transactional
    def save(ItemBrand itemBrandInstance) {
        if (itemBrandInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            itemBrandInstance.properties["insertUser"]=person
            Util util=new Util()
            itemBrandInstance.insertIp=util.getIpAddress(request)
            itemBrandInstance.insertMachine=util.getMachineName()
        }

        if (itemBrandInstance.hasErrors()) {
            respond itemBrandInstance.errors, view:'create'
            return
        }

        itemBrandInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'itemBrand.label', default: 'ItemBrand'), itemBrandInstance.id])
                redirect itemBrandInstance
            }
            '*' { respond itemBrandInstance, [status: CREATED] }
        }
    }

    def edit(ItemBrand itemBrandInstance) {
        respond itemBrandInstance
    }

    @Transactional
    def update(ItemBrand itemBrandInstance) {
        if (itemBrandInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            itemBrandInstance.properties["updateUser"]=person
            Util util=new Util()
            itemBrandInstance.updateIp=util.getIpAddress(request)
            itemBrandInstance.updateMachine=util.getMachineName()

        }

        if (itemBrandInstance.hasErrors()) {
            respond itemBrandInstance.errors, view:'edit'
            return
        }

        itemBrandInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ItemBrand.label', default: 'ItemBrand'), itemBrandInstance.id])
                redirect itemBrandInstance
            }
            '*'{ respond itemBrandInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ItemBrand itemBrandInstance) {

        if (itemBrandInstance == null) {
            notFound()
            return
        }

        itemBrandInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ItemBrand.label', default: 'ItemBrand'), itemBrandInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemBrand.label', default: 'ItemBrand'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
