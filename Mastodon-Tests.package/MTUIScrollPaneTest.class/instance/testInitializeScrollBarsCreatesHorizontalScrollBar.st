initialization
testInitializeScrollBarsCreatesHorizontalScrollBar

	| scrollPane |
	scrollPane := MTUIScrollPane new.
	
	self assert: scrollPane hScrollBar notNil.
	self assert: scrollPane hScrollBar class equals: ScrollBar.
	self assert: scrollPane hScrollBar orientation equals: #horizontal