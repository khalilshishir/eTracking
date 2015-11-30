package com.uma

import org.springframework.dao.DataIntegrityViolationException

class PersonAuthorityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        [personAuthorityInstanceList: PersonAuthority.list(params), personAuthorityInstanceTotal: PersonAuthority.count()]
    }

    def create() {
        [personAuthorityInstance: new PersonAuthority(params)]
    }

    def save() {
        def personAuthorityInstance = new PersonAuthority(params)
        if (!personAuthorityInstance.save(flush: true)) {
            render(view: "create", model: [personAuthorityInstance: personAuthorityInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'personAuthority.label', default: 'PersonAuthority'), personAuthorityInstance.person.username])
        redirect(action: "create", id: personAuthorityInstance.person.username)
    }

    def show(Long personId , Long authId) {
        Person person=Person.get(personId)
        Authority authority=Authority.get(authId)
        def personAuthorityInstance = PersonAuthority.findAllWhere(authority:  authority,person:  person)
        if (!personAuthorityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personAuthority.label', default: 'PersonAuthority'), id])
            redirect(action: "list")
            return
        }

        [personAuthorityInstance: personAuthorityInstance]
    }

    def edit(Long personId,Long authId) {
        Person person=Person.get(personId)
        Authority authority=Authority.get(authId)
        def personAuthorityInstance = PersonAuthority.findAllWhere(authority:  authority,person:  person)
        if (!personAuthorityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personAuthority.label', default: 'PersonAuthority'), id])
            redirect(action: "list")
            return
        }

        [personAuthorityInstance: personAuthorityInstance]
    }

    def update(Long id, Long version) {
        def personAuthorityInstance = PersonAuthority.get(id)
        if (!personAuthorityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personAuthority.label', default: 'PersonAuthority'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (personAuthorityInstance.version > version) {
                personAuthorityInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'personAuthority.label', default: 'PersonAuthority')] as Object[],
                        "Another user has updated this PersonAuthority while you were editing")
                render(view: "edit", model: [personAuthorityInstance: personAuthorityInstance])
                return
            }
        }

        personAuthorityInstance.properties = params

        if (!personAuthorityInstance.save(flush: true)) {
            render(view: "edit", model: [personAuthorityInstance: personAuthorityInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'personAuthority.label', default: 'PersonAuthority'), personAuthorityInstance.id])
        redirect(action: "show", id: personAuthorityInstance.id)
    }

    def delete(Long personId,Long authId) {
        Person person=Person.get(personId)
        Authority authority=Authority.get(authId)
        def personAuthorityInstance = PersonAuthority.findAllWhere(authority:  authority,person:  person)
        if (!personAuthorityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personAuthority.label', default: 'PersonAuthority'), id])
            redirect(action: "list")
            return
        }

        try {
            personAuthorityInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'personAuthority.label', default: 'PersonAuthority'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'personAuthority.label', default: 'PersonAuthority'), id])
            redirect(action: "show", id: id)
        }
    }
}
