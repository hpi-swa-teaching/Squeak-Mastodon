views
testLoadThreadViewOfLoadsThreadView

	| window |
	window := MTUIWindow new.
	
	window loadThreadViewOf: MTDataProvider firstToot.
	
	self assert: window viewMorph class equals: MTUIThread