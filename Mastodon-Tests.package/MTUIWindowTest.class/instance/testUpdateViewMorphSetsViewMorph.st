views-helpers
testUpdateViewMorphSetsViewMorph

	| window view |
	window := MTUIWindow new.
	view := MTUINewToot new.
	
	window updateViewMorph: view.
	
	self assert: window viewMorph equals: view