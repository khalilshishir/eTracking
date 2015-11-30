package com.org.item

import com.uma.Person
import util.Util

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ItemCategoryController {
def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ItemCategory.list(params), model: [itemCategoryInstanceCount: ItemCategory.count()]
    }

    def show(ItemCategory itemCategoryInstance) {
        respond itemCategoryInstance
    }

    def create() {
        respond new ItemCategory(params)
    }

    @Transactional
    def save(ItemCategory itemCategoryInstance) {
        if (itemCategoryInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            itemCategoryInstance.properties["insertUser"]=person
            Util util=new Util()
            itemCategoryInstance.insertIp=util.getIpAddress(request)
            itemCategoryInstance.insertMachine=util.getMachineName()
        }

        if (itemCategoryInstance.hasErrors()) {
            respond itemCategoryInstance.errors, view: 'create'
            return
        }

        itemCategoryInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'itemCategory.label', default: 'ItemCategory'), itemCategoryInstance.id])
                redirect itemCategoryInstance
            }
            '*' { respond itemCategoryInstance, [status: CREATED] }
        }
    }

    def edit(ItemCategory itemCategoryInstance) {
        respond itemCategoryInstance
    }

    @Transactional
    def update(ItemCategory itemCategoryInstance) {
        if (itemCategoryInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            itemCategoryInstance.properties["updateUser"]=person
            Util util=new Util()
            itemCategoryInstance.updateIp=util.getIpAddress(request)
            itemCategoryInstance.updateMachine=util.getMachineName()

        }

        if (itemCategoryInstance.hasErrors()) {
            respond itemCategoryInstance.errors, view: 'edit'
            return
        }

        itemCategoryInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ItemCategory.label', default: 'ItemCategory'), itemCategoryInstance.id])
                redirect itemCategoryInstance
            }
            '*' { respond itemCategoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ItemCategory itemCategoryInstance) {

        if (itemCategoryInstance == null) {
            notFound()
            return
        }

        itemCategoryInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ItemCategory.label', default: 'ItemCategory'), itemCategoryInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemCategory.label', default: 'ItemCategory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
