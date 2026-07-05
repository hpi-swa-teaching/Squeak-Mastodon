views
testLoadReplyViewToLoadsNewTootView

	| window |
	window := MTUIWindow new.
	
	window loadReplyViewTo: MTDataProvider firstToot.
	
	self assert: window viewMorph class equals: MTUINewToot