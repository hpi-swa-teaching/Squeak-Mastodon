as yet unclassified
testSearchResultStatuses
	| Model |
	
	Model :=  MTSearchResult new.
	
	Model statuses: 'not available'.
		
	self assert: (Model statuses)  equals: ('not available'). 