package com.org.item

import com.uma.Person
import util.Util

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ItemInfoController {
def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ItemInfo.list(params), model: [itemInfoInstanceCount: ItemInfo.count()]
    }

    def show(ItemInfo itemInfoInstance) {
        respond itemInfoInstance
    }

    def create() {
        respond new ItemInfo(params)
    }

    @Transactional
    def save(ItemInfo itemInfoInstance) {
        if (itemInfoInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            itemInfoInstance.properties["insertUser"]=person
            Util util=new Util()
            itemInfoInstance.insertIp=util.getIpAddress(request)
            itemInfoInstance.insertMachine=util.getMachineName()
        }

        if (itemInfoInstance.hasErrors()) {
            respond itemInfoInstance.errors, view: 'create'
            return
        }

        itemInfoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'itemInfo.label', default: 'ItemInfo'), itemInfoInstance.id])
                redirect itemInfoInstance
            }
            '*' { respond itemInfoInstance, [status: CREATED] }
        }
    }

    def edit(ItemInfo itemInfoInstance) {
        respond itemInfoInstance
    }

    @Transactional
    def update(ItemInfo itemInfoInstance) {
        if (itemInfoInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            itemInfoInstance.properties["updateUser"]=person
            Util util=new Util()
            itemInfoInstance.updateIp=util.getIpAddress(request)
            itemInfoInstance.updateMachine=util.getMachineName()

        }

        if (itemInfoInstance.hasErrors()) {
            respond itemInfoInstance.errors, view: 'edit'
            return
        }

        itemInfoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ItemInfo.label', default: 'ItemInfo'), itemInfoInstance.id])
                redirect itemInfoInstance
            }
            '*' { respond itemInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ItemInfo itemInfoInstance) {

        if (itemInfoInstance == null) {
            notFound()
            return
        }

        itemInfoInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ItemInfo.label', default: 'ItemInfo'), itemInfoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemInfo.label', default: 'ItemInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
