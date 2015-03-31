package com.xinnuo.smm

import grails.transaction.Transactional;

class GroupingItemsController {

    def index() {
		def notGroupedItems = Item.where {
			results {
				groupNumber == null
			}
		}.list()
		
		def groupedItems = Item.where {
			results {
				groupNumber != null
			}
		}.list()
		
		groupedItems = groupedItems - notGroupedItems
		[notGroupedItems:notGroupedItems, groupedItems: groupedItems]
	}
	
	def reset(Item itemInstance){
		session.item = itemInstance
	}
	
	@Transactional
	def submit() {
		//随机分组
		if(params.groupingType == "随机"){
			session.groupingType = "随机"
			def raceGroups = session.item.raceGroups.asList()
			def notEmptyGroups = new ArrayList()
			for(raceGroup in raceGroups){
				if(Result.findAllByRaceGroupAndItem(raceGroup, session.item).size() > 0){
					notEmptyGroups.add(raceGroup)
				}
			}
			session.raceGroups = notEmptyGroups
			session.raceGroup = session.raceGroups[0]
			def randomResults = Result.findAllByRaceGroupAndItem(session.raceGroup, session.item)
			Collections.shuffle(randomResults)
			def groupCounter = 1; //组别
			def laneCounter = 1;  //道次
			for(result in randomResults){
				result.groupNumber = groupCounter
				result.laneNumber = laneCounter
				result.save(flush:true)
				laneCounter ++
				if(laneCounter == session.item.groupMemberMax){
					laneCounter = 1
					groupCounter++
				}
			}
			session.results = randomResults
		}
		//蛇形分组
		else if(params.groupingType == "蛇形"){
			session.groupingType = "蛇形"
			def raceGroups = session.item.raceGroups.asList()
			def notEmptyGroups = new ArrayList()
			for(raceGroup in raceGroups){
				if(Result.findAllByRaceGroupAndItem(raceGroup, session.item).size() > 0){
					notEmptyGroups.add(raceGroup)
				}
			}
			session.raceGroups = notEmptyGroups
			session.raceGroup = session.raceGroups[0]
			def results = Result.findAllByRaceGroupAndItemAndSignUpResultIsNotNull(session.raceGroup, session.item, [sort:'signUpResult'])
			results += Result.findAllByRaceGroupAndItemAndSignUpResultIsNull(session.raceGroup, session.item)
			def groupCounter = 1; //组别
			def laneCounter = 1;  //道次
			for(result in results){
				result.groupNumber = groupCounter
				result.laneNumber = laneCounter
				result.save(flush:true)
				laneCounter ++
				if(laneCounter == session.item.groupMemberMax){
					laneCounter = 1
					groupCounter++
				}
			}
			session.results = results
			
		}
		else{
			session.raceGroups.remove(0)
			session.raceGroup = session.raceGroups[0]
			def results
			if(session.groupingType == "随机"){
				results = Result.findAllByRaceGroupAndItem(session.raceGroup, session.item)
				Collections.shuffle(results)
			}
			else if(session.groupingType == "蛇形"){
				results = Result.findAllByRaceGroupAndItemAndSignUpResultIsNotNull(session.raceGroup, session.item, [sort:'signUpResult'])
				results += Result.findAllByRaceGroupAndItemAndSignUpResultIsNull(session.raceGroup, session.item)
			}
			def groupCounter = 1; //组别
			def laneCounter = 1;  //道次
			for(result in results){
				result.groupNumber = groupCounter
				result.laneNumber = laneCounter
				result.save(flush:true)
				laneCounter ++
				if(laneCounter == session.item.groupMemberMax){
					laneCounter = 1
					groupCounter++
				}
			}
			session.results = results
			if(session.raceGroups.size() == 0){
				flash.message = "分组完成"
				redirect(action:"index")
			}
		}
		
	}
	
	@Transactional
	def cancel() {
		Collections.shuffle(session.results)
		def groupCounter = 1; //组别
		def laneCounter = 1;  //道次
		for(result in session.results){
			result.groupNumber = groupCounter
			result.laneNumber = laneCounter
			result.save(flush:true)
			laneCounter ++
			if(laneCounter == session.item.groupMemberMax){
				laneCounter = 1
				groupCounter++
			}
		}
		render(view:"submit")
	}
	
	def view(Item itemInstance){
		def raceGroups = itemInstance.raceGroups
		def results = new ArrayList()
		for(raceGroup in raceGroups){
			if(Result.findAllByRaceGroupAndItem(raceGroup, itemInstance).size() > 0){
				results.add(Result.findAllByItemAndRaceGroup(itemInstance, raceGroup))
			}
		}
		[groupedResults:results, item: itemInstance]
	}
}
