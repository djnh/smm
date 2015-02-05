package com.xinnuo.smm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ItemController {

	static scaffold = Item

    @Transactional
    def update(Item itemInstance) {
        if (itemInstance == null) {
            notFound()
            return
        }

        if (itemInstance.hasErrors()) {
            respond itemInstance.errors, view:'edit'
            return
        }
		
		itemInstance.raceGroups = RaceGroup.getAll(params.raceGroups)

        itemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'item.label', default: 'Item'), itemInstance.id])
                redirect (action:'index')
            }
            '*'{ respond itemInstance, [status: OK] }
        }
    }

}
