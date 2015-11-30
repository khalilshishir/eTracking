package com.org.item

import com.uma.Person
import util.Util

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ItemSeriesController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ItemSeries.list(params), model: [itemSeriesInstanceCount: ItemSeries.count()]
    }

    def show(ItemSeries itemSeriesInstance) {
        respond itemSeriesInstance
    }

    def create() {
        respond new ItemSeries(params)
    }

    @Transactional
    def save(ItemSeries itemSeriesInstance) {
        if (itemSeriesInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            itemSeriesInstance.properties["insertUser"]=person
            Util util=new Util()
            itemSeriesInstance.insertIp=util.getIpAddress(request)
            itemSeriesInstance.insertMachine=util.getMachineName()
        }
        if (itemSeriesInstance.hasErrors()) {
            respond itemSeriesInstance.errors, view: 'create'
            return
        }

        itemSeriesInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'itemSeries.label', default: 'ItemSeries'), itemSeriesInstance.id])
                redirect itemSeriesInstance
            }
            '*' { respond itemSeriesInstance, [status: CREATED] }
        }
    }

    def edit(ItemSeries itemSeriesInstance) {
        respond itemSeriesInstance
    }

    @Transactional
    def update(ItemSeries itemSeriesInstance) {
        if (itemSeriesInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            itemSeriesInstance.properties["updateUser"]=person
            Util util=new Util()
            itemSeriesInstance.updateIp=util.getIpAddress(request)
            itemSeriesInstance.updateMachine=util.getMachineName()

        }

        if (itemSeriesInstance.hasErrors()) {
            respond itemSeriesInstance.errors, view: 'edit'
            return
        }

        itemSeriesInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ItemSeries.label', default: 'ItemSeries'), itemSeriesInstance.id])
                redirect itemSeriesInstance
            }
            '*' { respond itemSeriesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ItemSeries itemSeriesInstance) {

        if (itemSeriesInstance == null) {
            notFound()
            return
        }

        itemSeriesInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ItemSeries.label', default: 'ItemSeries'), itemSeriesInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemSeries.label', default: 'ItemSeries'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
