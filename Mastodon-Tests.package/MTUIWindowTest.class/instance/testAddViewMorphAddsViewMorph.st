render
testAddViewMorphAddsViewMorph

	| window |
	window := MTUIWindow new.
	
	window addViewMorph.
	
	self assert: (window scrollMorph scroller submorphs includes: window viewMorph)