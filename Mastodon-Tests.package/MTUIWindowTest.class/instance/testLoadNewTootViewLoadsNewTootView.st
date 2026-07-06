views
testLoadNewTootViewLoadsNewTootView

	| window |
	window := MTUIWindow new.
	
	window loadNewTootView.
	
	self assert: window viewMorph class equals: MTUINewToot