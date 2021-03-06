package com.uma

import org.springframework.dao.DataIntegrityViolationException
import com.uma.Authority

class AuthorityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        [authorityInstanceList: Authority.list(params), authorityInstanceTotal: Authority.count()]
    }

    def create() {
        [authorityInstance: new Authority(params)]
    }

    def save() {
        def authorityInstance = new Authority()
        String authority=params.name
        authorityInstance.name=params.name
        authorityInstance.authority="ROLE_"+authority.toUpperCase()

        if (!authorityInstance.save(flush: true)) {
            render(view: "create", model: [authorityInstance: authorityInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'authority.label', default: 'Authority'), authorityInstance.id])
        redirect(action: "show", id: authorityInstance.id)
    }

    def show(Long id) {
        def authorityInstance = Authority.get(id)
        if (!authorityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'authority.label', default: 'Authority'), id])
            redirect(action: "list")
            return
        }

        [authorityInstance: authorityInstance]
    }

    def edit(Long id) {
        def authorityInstance = Authority.get(id)
        if (!authorityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'authority.label', default: 'Authority'), id])
            redirect(action: "list")
            return
        }

        [authorityInstance: authorityInstance]
    }

    def update(Long id, Long version) {
        def authorityInstance = Authority.get(id)
        if (!authorityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'authority.label', default: 'Authority'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (authorityInstance.version > version) {
                authorityInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'authority.label', default: 'Authority')] as Object[],
                        "Another user has updated this Authority while you were editing")
                render(view: "edit", model: [authorityInstance: authorityInstance])
                return
            }
        }

        String authority=params.name
        authorityInstance.name=params.name
        authorityInstance.authority="ROLE_"+authority.toUpperCase()

        if (!authorityInstance.save(flush: true)) {
            render(view: "edit", model: [authorityInstance: authorityInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'authority.label', default: 'Authority'), authorityInstance.id])
        redirect(action: "show", id: authorityInstance.id)
    }

    def delete(Long id) {
        def authorityInstance = Authority.get(id)
        if (!authorityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'authority.label', default: 'Authority'), id])
            redirect(action: "list")
            return
        }

        try {
            authorityInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'authority.label', default: 'Authority'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'authority.label', default: 'Authority'), id])
            redirect(action: "show", id: id)
        }
    }
}
