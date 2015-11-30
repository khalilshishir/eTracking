package com.org.item

import com.uma.Person
import util.Util

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ItemSubCategoryController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ItemSubCategory.list(params), model: [itemSubCategoryInstanceCount: ItemSubCategory.count()]
    }

    def show(ItemSubCategory itemSubCategoryInstance) {
        respond itemSubCategoryInstance
    }

    def create() {
        respond new ItemSubCategory(params)
    }

    @Transactional
    def save(ItemSubCategory itemSubCategoryInstance) {
        if (itemSubCategoryInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            itemSubCategoryInstance.properties["insertUser"]=person
            Util util=new Util()
            itemSubCategoryInstance.insertIp=util.getIpAddress(request)
            itemSubCategoryInstance.insertMachine=util.getMachineName()
        }

        if (itemSubCategoryInstance.hasErrors()) {
            respond itemSubCategoryInstance.errors, view: 'create'
            return
        }

        itemSubCategoryInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'itemSubCategory.label', default: 'ItemSubCategory'), itemSubCategoryInstance.id])
                redirect itemSubCategoryInstance
            }
            '*' { respond itemSubCategoryInstance, [status: CREATED] }
        }
    }

    def edit(ItemSubCategory itemSubCategoryInstance) {
        respond itemSubCategoryInstance
    }

    @Transactional
    def update(ItemSubCategory itemSubCategoryInstance) {
        if (itemSubCategoryInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            itemSubCategoryInstance.properties["updateUser"]=person
            Util util=new Util()
            itemSubCategoryInstance.updateIp=util.getIpAddress(request)
            itemSubCategoryInstance.updateMachine=util.getMachineName()

        }

        if (itemSubCategoryInstance.hasErrors()) {
            respond itemSubCategoryInstance.errors, view: 'edit'
            return
        }

        itemSubCategoryInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ItemSubCategory.label', default: 'ItemSubCategory'), itemSubCategoryInstance.id])
                redirect itemSubCategoryInstance
            }
            '*' { respond itemSubCategoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ItemSubCategory itemSubCategoryInstance) {

        if (itemSubCategoryInstance == null) {
            notFound()
            return
        }

        itemSubCategoryInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ItemSubCategory.label', default: 'ItemSubCategory'), itemSubCategoryInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemSubCategory.label', default: 'ItemSubCategory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
