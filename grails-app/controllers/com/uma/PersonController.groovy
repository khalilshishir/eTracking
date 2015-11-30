package com.uma

import org.springframework.dao.DataIntegrityViolationException

class PersonController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
        [personInstanceList: Person.list(params), personInstanceTotal: Person.count()]
    }

    def create() {
        [personInstance: new Person(params)]
    }


    def save() {
        println(params.authority)
        def personInstance = new Person(params)
        personInstance.enabled=Boolean.TRUE

        if( Person.findByUsername(params.username) ) {
            flash.message ="This User name already in use"
            render(view: "create", model: [personInstance: personInstance])
            return
        }
        if (!personInstance.save(flush: true)) {
            render(view: "create", model: [personInstance: personInstance])
            return
        }

        def authorityId = params.list("authority")
        println(authorityId)
        for(int j=0;j<authorityId.size();j++){
            def authority=new Authority().get(authorityId[j].toLong())
            PersonAuthority personAuthority=new PersonAuthority(
                    authority: authority,
                    person:personInstance,
            )
            personAuthority.save(flush: true)
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'person.label', default: 'Person'), personInstance.username])
        redirect(action: "show", id: personInstance.id)
    }

    def show(Long id) {
        def personInstance = Person.get(id)
        if (!personInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), personInstance.username])
            redirect(action: "list")
            return
        }

        List<Authority> userRole = new ArrayList<Authority>()
        PersonAuthority.findByPerson(personInstance).each {
            userRole.add(it.authority)
        }
        def pAuth=PersonAuthority.findAllByPerson(personInstance)
        def auth=Authority.executeQuery('select AUTH.name from PersonAuthority pa , Authority AUTH where pa.person=? and AUTH.id=pa.authority.id',[personInstance])



        [personInstance: personInstance,userRole: auth]
    }

    def edit(Long id) {
        def personInstance = Person.get(id)
        if (!personInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), personInstance.username])
            redirect(action: "list")
            return
        }

        List<Authority> userRole = new ArrayList<Authority>()
        PersonAuthority.findAllByPerson(personInstance).each {
            userRole.add(it.authority)
        }
        [personInstance: personInstance,userRole: userRole]
    }

    def update(Long id, Long version) {
        def personInstance = Person.get(id)
        if (!personInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), personInstance.username])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (personInstance.version > version) {
                personInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'person.label', default: 'Person')] as Object[],
                        "Another user has updated this Person while you were editing")
                render(view: "edit", model: [personInstance: personInstance])
                return
            }
        }

        personInstance.properties = params

        if (!personInstance.save(flush: true)) {
            render(view: "edit", model: [personInstance: personInstance])
            return
        }
        PersonAuthority.removeAll(personInstance)
        def authorityId = params.list("authority")
        println(authorityId)
        for(int j=0;j<authorityId.size();j++){
            def authority=new Authority().get(authorityId[j].toLong())
            PersonAuthority personAuthority=new PersonAuthority(
                    authority: authority,
                    person:personInstance,
            )
            personAuthority.save(flush: true)
        }
        flash.message = message(code: 'default.updated.message', args: [message(code: 'person.label', default: 'Person'), personInstance.username])
        redirect(action: "show", id: personInstance.id)
    }

    def delete(Long id) {
        def personInstance = Person.get(id)
        if (!personInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), personInstance.username])
            redirect(action: "list")
            return
        }

        try {
            PersonAuthority.removeAll(personInstance)
            personInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'person.label', default: 'Person'), personInstance.username])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'person.label', default: 'Person'), personInstance.username])
            redirect(action: "show", id: id)
        }
    }

    def updatePassword(){

    }
    def changePassword(){
        def curUser =springSecurityService.getCurrentUser()
        Person person=Person.get(curUser.id)
        String pass=params.password
        person.properties["password"]=pass
        if(person.save()){
            flash.message = "Password Updated Successfully"
            redirect(action: "updatePassword")
        }else {
            flash.message = "Password Not Updated ."
            redirect(action: "updatePassword")

        }

    }
    def checkAvailable(String userName){
        def available
        if( Person.findByUsername(userName) ) {
            available = false
        } else {
            available = true
        }
        response.contentType = "application/json"
        render """{"available":${available}}"""
    }
}
