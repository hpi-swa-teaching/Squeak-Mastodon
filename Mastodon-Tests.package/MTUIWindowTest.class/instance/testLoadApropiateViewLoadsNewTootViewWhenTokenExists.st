views
testLoadApropiateViewLoadsNewTootViewWhenTokenExists

	| window |
	window := MTUIWindow new.
	
	window loadApropiateView.
	
	self assert: window viewMorph class equals: MTUINewToot