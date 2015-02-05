package com.xinnuo.smm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OrgController {

    static scaffold = Org

    @Transactional
    def update(Org orgInstance) {
        if (orgInstance == null) {
            notFound()
            return
        }

        if (orgInstance.hasErrors()) {
            respond orgInstance.errors, view:'edit'
            return
        }
		
		orgInstance.accessItems = Item.getAll(params.accessItems)
		orgInstance.accessGroups = RaceGroup.getAll(params.accessGroups)

        orgInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'org.label', default: 'Org'), orgInstance.id])
                redirect (action:'index')
            }
            '*'{ respond orgInstance, [status: OK] }
        }
    }

}
