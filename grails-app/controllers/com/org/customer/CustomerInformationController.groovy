package com.org.customer

import com.uma.Person
import grails.transaction.Transactional
import groovy.sql.Sql
import util.Util

import javax.sql.DataSource

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class CustomerInformationController {
    def springSecurityService
    DataSource dataSource

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CustomerInformation.list(params), model: [customerInformationInstanceCount: CustomerInformation.count()]
    }

    def show(CustomerInformation customerInformationInstance) {
        respond customerInformationInstance
    }

    def create() {
            Sql sql = new Sql(dataSource)

            String query = """
            SELECT * FROM t02003  where  length(geo_code)=2
            """
            def divisions = sql.rows(query)


        [customerInformationInstance: new CustomerInformation(params),results:divisions]
    }

    @Transactional
    def save(CustomerInformation customerInformationInstance) {
        println(params)
        if (customerInformationInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            customerInformationInstance.properties["insertUser"]=person
            Util util=new Util()
            customerInformationInstance.insertIp=util.getIpAddress(request)
            customerInformationInstance.insertMachine=util.getMachineName()
        }

        if (customerInformationInstance.hasErrors()) {
            respond customerInformationInstance.errors, view: 'create'
            return
        }

        customerInformationInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customerInformation.label', default: 'CustomerInformation'), customerInformationInstance.id])
                redirect customerInformationInstance
            }
            '*' { respond customerInformationInstance, [status: CREATED] }
        }
    }

    def edit(CustomerInformation customerInformationInstance) {
        Sql sql = new Sql(dataSource)

        String query = """
            SELECT * FROM t02003  where  length(geo_code)=2
            """
        def divisions = sql.rows(query)

        [customerInformationInstance: customerInformationInstance,results:divisions]
    }

    @Transactional
    def update(CustomerInformation customerInformationInstance) {
        if (customerInformationInstance == null) {
            notFound()
            return
        }else {
            def curUser =springSecurityService.getCurrentUser()
            Person person=Person.read(curUser.id)
            customerInformationInstance.properties["updateUser"]=person
            Util util=new Util()
            customerInformationInstance.updateIp=util.getIpAddress(request)
            customerInformationInstance.updateMachine=util.getMachineName()

        }

        if (customerInformationInstance.hasErrors()) {
            respond customerInformationInstance.errors, view: 'edit'
            return
        }

        customerInformationInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CustomerInformation.label', default: 'CustomerInformation'), customerInformationInstance.id])
                redirect customerInformationInstance
            }
            '*' { respond customerInformationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CustomerInformation customerInformationInstance) {

        if (customerInformationInstance == null) {
            notFound()
            return
        }

        customerInformationInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CustomerInformation.label', default: 'CustomerInformation'), customerInformationInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerInformation.label', default: 'CustomerInformation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def findDistrict(){
        String options = "<option value=''>Select One</option>"
        String geoCode=params.geoCode
        Sql sql = new Sql(dataSource)
        String query = """
            SELECT * FROM t02003 where div_code=${geoCode} and length(geo_code)=4
            """
        def districts = sql.rows(query)

        districts.each {
            options += "<option value='"+it.geo_code+"'>"+it.description+"</option>"
        }
        render options
    }
    def findThana(){
        println(params)
        String options = "<option value=''>Select One</option>"
        String geoCode=params.geoCode
        String geo="'${geoCode}%'"
        Sql sql = new Sql(dataSource)
        String query = """
            SELECT * FROM t02003 where geo_code like ${geo} and length(geo_code)=6
            """
        println(query)
        def districts = sql.rows(query)

        districts.each {
            options += "<option value='"+it.geo_code+"'>"+it.description+"</option>"
        }
        render options
    }
}
