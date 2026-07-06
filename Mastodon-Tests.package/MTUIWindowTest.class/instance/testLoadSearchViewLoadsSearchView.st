views
testLoadSearchViewLoadsSearchView

	| window |
	window := MTUIWindow new.
	
	window loadSearchView.
	
	self assert: window viewMorph class equals: MTUISearch