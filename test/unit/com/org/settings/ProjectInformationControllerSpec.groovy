package com.org.settings


import grails.test.mixin.*
import spock.lang.*

@TestFor(ProjectInformationController)
@Mock(ProjectInformation)
class ProjectInformationControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.projectInformationInstanceList
        model.projectInformationInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.projectInformationInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'POST'
        def projectInformation = new ProjectInformation()
        projectInformation.validate()
        controller.save(projectInformation)

        then: "The create view is rendered again with the correct model"
        model.projectInformationInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        projectInformation = new ProjectInformation(params)

        controller.save(projectInformation)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/projectInformation/show/1'
        controller.flash.message != null
        ProjectInformation.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def projectInformation = new ProjectInformation(params)
        controller.show(projectInformation)

        then: "A model is populated containing the domain instance"
        model.projectInformationInstance == projectInformation
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def projectInformation = new ProjectInformation(params)
        controller.edit(projectInformation)

        then: "A model is populated containing the domain instance"
        model.projectInformationInstance == projectInformation
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'PUT'
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/projectInformation/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def projectInformation = new ProjectInformation()
        projectInformation.validate()
        controller.update(projectInformation)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.projectInformationInstance == projectInformation

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        projectInformation = new ProjectInformation(params).save(flush: true)
        controller.update(projectInformation)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/projectInformation/show/$projectInformation.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'DELETE'
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/projectInformation/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def projectInformation = new ProjectInformation(params).save(flush: true)

        then: "It exists"
        ProjectInformation.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(projectInformation)

        then: "The instance is deleted"
        ProjectInformation.count() == 0
        response.redirectedUrl == '/projectInformation/index'
        flash.message != null
    }
}
