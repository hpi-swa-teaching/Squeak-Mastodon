views-helpers
testLoadViewAsActivateSetsViewMorph

	| window view |
	window := MTUIWindow new.
	view := MTUINewToot new.
	
	window loadView: view as: #newTootView activate: #newTootButton.
	
	self assert: window viewMorph equals: view