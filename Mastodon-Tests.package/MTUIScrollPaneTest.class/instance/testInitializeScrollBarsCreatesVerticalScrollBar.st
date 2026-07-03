initialization
testInitializeScrollBarsCreatesVerticalScrollBar

	| scrollPane |
	scrollPane := MTUIScrollPane new.
	
	self assert: scrollPane vScrollBar notNil.
	self assert: scrollPane vScrollBar class equals: MTUIScrollBar.
	self assert: scrollPane vScrollBar orientation equals: #vertical