render
testAddAllTootsAddsTootMorphsToView

	| timeline |
	timeline := MTUIHomeTimeline new.
	timeline toots: {MTDataProvider firstToot. MTDataProvider secondToot} asOrderedCollection.
	
	timeline addAllToots.
	
	timeline tootMorphs do: [:each | self assert: (timeline submorphs includes: each)]