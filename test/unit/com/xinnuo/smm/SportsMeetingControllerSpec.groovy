package com.xinnuo.smm



import grails.test.mixin.*
import spock.lang.*

@TestFor(SportsMeetingController)
@Mock(SportsMeeting)
class SportsMeetingControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.sportsMeetingInstanceList
            model.sportsMeetingInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.sportsMeetingInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def sportsMeeting = new SportsMeeting()
            sportsMeeting.validate()
            controller.save(sportsMeeting)

        then:"The create view is rendered again with the correct model"
            model.sportsMeetingInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            sportsMeeting = new SportsMeeting(params)

            controller.save(sportsMeeting)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/sportsMeeting/show/1'
            controller.flash.message != null
            SportsMeeting.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def sportsMeeting = new SportsMeeting(params)
            controller.show(sportsMeeting)

        then:"A model is populated containing the domain instance"
            model.sportsMeetingInstance == sportsMeeting
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def sportsMeeting = new SportsMeeting(params)
            controller.edit(sportsMeeting)

        then:"A model is populated containing the domain instance"
            model.sportsMeetingInstance == sportsMeeting
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/sportsMeeting/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def sportsMeeting = new SportsMeeting()
            sportsMeeting.validate()
            controller.update(sportsMeeting)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.sportsMeetingInstance == sportsMeeting

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            sportsMeeting = new SportsMeeting(params).save(flush: true)
            controller.update(sportsMeeting)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/sportsMeeting/show/$sportsMeeting.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/sportsMeeting/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def sportsMeeting = new SportsMeeting(params).save(flush: true)

        then:"It exists"
            SportsMeeting.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(sportsMeeting)

        then:"The instance is deleted"
            SportsMeeting.count() == 0
            response.redirectedUrl == '/sportsMeeting/index'
            flash.message != null
    }
}
