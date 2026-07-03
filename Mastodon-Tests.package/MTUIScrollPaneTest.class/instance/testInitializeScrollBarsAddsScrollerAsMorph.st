initialization
testInitializeScrollBarsAddsScrollerAsMorph

	| scrollPane |
	scrollPane := MTUIScrollPane new.
	
	self assert: (scrollPane submorphs includes: scrollPane scroller)