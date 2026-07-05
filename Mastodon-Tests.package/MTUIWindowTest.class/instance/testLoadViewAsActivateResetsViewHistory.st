views-helpers
testLoadViewAsActivateResetsViewHistory

	| window |
	window := MTUIWindow new.
	window viewHistory: {Morph new} asOrderedCollection.
	
	window loadView: MTUINewToot new as: #newTootView activate: #newTootButton.
	
	self assert: window viewHistory isEmpty