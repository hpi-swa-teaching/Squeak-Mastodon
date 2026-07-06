views-helpers
testUpdateViewMorphAddsViewMorph

	| window view |
	window := MTUIWindow new.
	view := MTUINewToot new.
	
	window updateViewMorph: view.
	
	self assert: (window scrollMorph scroller submorphs includes: view)