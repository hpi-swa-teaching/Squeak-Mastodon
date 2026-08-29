search result
testSearchResultStatuses

	| model |
	model := MTSearchResult new.
	
	model statuses: 'not available'.
	
	self assert: model statuses equals: 'not available'