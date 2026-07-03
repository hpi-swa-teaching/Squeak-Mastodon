accessing
testButtonsInitiallyEmpty

	| menuBar |
	menuBar := MTUIMenu new.
	
	self assert: menuBar buttons class equals: OrderedCollection.
	self assert: menuBar buttons isEmpty