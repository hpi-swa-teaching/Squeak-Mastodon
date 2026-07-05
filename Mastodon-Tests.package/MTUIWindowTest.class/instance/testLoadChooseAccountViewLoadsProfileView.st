views
testLoadChooseAccountViewLoadsProfileView

	| window |
	window := MTUIWindow new.
	
	window loadChooseAccountView.
	
	self assert: window viewMorph class equals: MTUIProfile