package com.xinnuo.smm

class GroupingItemsController {

    def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		def query = Item.where {
			results {
				groupNumber == null
			}
		}
		def items = query.list(params)
		respond items, model:[itemInstanceCount: query.size()]
	}
}
