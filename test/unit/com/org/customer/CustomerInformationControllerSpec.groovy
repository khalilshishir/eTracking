package com.org.customer


import grails.test.mixin.*
import spock.lang.*

@TestFor(CustomerInformationController)
@Mock(CustomerInformation)
class CustomerInformationControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.customerInformationInstanceList
        model.customerInformationInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.customerInformationInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'POST'
        def customerInformation = new CustomerInformation()
        customerInformation.validate()
        controller.save(customerInformation)

        then: "The create view is rendered again with the correct model"
        model.customerInformationInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        customerInformation = new CustomerInformation(params)

        controller.save(customerInformation)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/customerInformation/show/1'
        controller.flash.message != null
        CustomerInformation.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def customerInformation = new CustomerInformation(params)
        controller.show(customerInformation)

        then: "A model is populated containing the domain instance"
        model.customerInformationInstance == customerInformation
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def customerInformation = new CustomerInformation(params)
        controller.edit(customerInformation)

        then: "A model is populated containing the domain instance"
        model.customerInformationInstance == customerInformation
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'PUT'
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/customerInformation/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def customerInformation = new CustomerInformation()
        customerInformation.validate()
        controller.update(customerInformation)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.customerInformationInstance == customerInformation

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        customerInformation = new CustomerInformation(params).save(flush: true)
        controller.update(customerInformation)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/customerInformation/show/$customerInformation.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'DELETE'
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/customerInformation/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def customerInformation = new CustomerInformation(params).save(flush: true)

        then: "It exists"
        CustomerInformation.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(customerInformation)

        then: "The instance is deleted"
        CustomerInformation.count() == 0
        response.redirectedUrl == '/customerInformation/index'
        flash.message != null
    }
}
