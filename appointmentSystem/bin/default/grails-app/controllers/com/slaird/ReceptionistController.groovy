package com.slaird

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ReceptionistController {

    ReceptionistService receptionistService

    def login() {

    }

    def validate() {  
    def user2 = Receptionist.findByRecepEmail(params.recepEmail)
    if (user2 && user2.password == params.password){
    session.user2 = user2
    render view:'home'
    }
    else{
    flash.message = "Invalid username and password."
    render view:'login'
    }
    }

    def logout = {
    session.user2 = null
    redirect(uri:'/')
    }

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond receptionistService.list(params), model:[receptionistCount: receptionistService.count()]
    }

    def show(Long id) {
        respond receptionistService.get(id)
    }

    def create() {
        respond new Receptionist(params)
    }

    def save(Receptionist receptionist) {
        if (receptionist == null) {
            notFound()
            return
        }

        try {
            receptionistService.save(receptionist)
        } catch (ValidationException e) {
            respond receptionist.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'receptionist.label', default: 'Receptionist'), receptionist.id])
                redirect receptionist
            }
            '*' { respond receptionist, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond receptionistService.get(id)
    }

    def update(Receptionist receptionist) {
        if (receptionist == null) {
            notFound()
            return
        }

        try {
            receptionistService.save(receptionist)
        } catch (ValidationException e) {
            respond receptionist.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'receptionist.label', default: 'Receptionist'), receptionist.id])
                redirect receptionist
            }
            '*'{ respond receptionist, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        receptionistService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'receptionist.label', default: 'Receptionist'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'receptionist.label', default: 'Receptionist'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
