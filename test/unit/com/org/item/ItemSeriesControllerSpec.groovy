package com.org.item


import grails.test.mixin.*
import spock.lang.*

@TestFor(ItemSeriesController)
@Mock(ItemSeries)
class ItemSeriesControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.itemSeriesInstanceList
        model.itemSeriesInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.itemSeriesInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'POST'
        def itemSeries = new ItemSeries()
        itemSeries.validate()
        controller.save(itemSeries)

        then: "The create view is rendered again with the correct model"
        model.itemSeriesInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        itemSeries = new ItemSeries(params)

        controller.save(itemSeries)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/itemSeries/show/1'
        controller.flash.message != null
        ItemSeries.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def itemSeries = new ItemSeries(params)
        controller.show(itemSeries)

        then: "A model is populated containing the domain instance"
        model.itemSeriesInstance == itemSeries
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def itemSeries = new ItemSeries(params)
        controller.edit(itemSeries)

        then: "A model is populated containing the domain instance"
        model.itemSeriesInstance == itemSeries
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'PUT'
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/itemSeries/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def itemSeries = new ItemSeries()
        itemSeries.validate()
        controller.update(itemSeries)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.itemSeriesInstance == itemSeries

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        itemSeries = new ItemSeries(params).save(flush: true)
        controller.update(itemSeries)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/itemSeries/show/$itemSeries.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'DELETE'
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/itemSeries/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def itemSeries = new ItemSeries(params).save(flush: true)

        then: "It exists"
        ItemSeries.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(itemSeries)

        then: "The instance is deleted"
        ItemSeries.count() == 0
        response.redirectedUrl == '/itemSeries/index'
        flash.message != null
    }
}
