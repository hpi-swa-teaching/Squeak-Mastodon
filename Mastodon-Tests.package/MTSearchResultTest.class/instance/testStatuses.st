getter/setter
testStatuses

	| searchResults tootList |
	searchResults := MTSearchResult new.
	
	tootList := {DataProvider defaultTootPlain, DataProvider defaultTootWithImage}.
	searchResults statuses: tootList.
	
	self assert: searchResults statuses equals: tootList