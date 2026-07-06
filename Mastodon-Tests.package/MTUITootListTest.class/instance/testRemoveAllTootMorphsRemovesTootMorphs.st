render
testRemoveAllTootMorphsRemovesTootMorphs

	| timeline firstMorph secondMorph |
	timeline := self getTimeline.
	
	firstMorph := Morph new.
	secondMorph := Morph new.
	
	timeline
		addMorphBack: firstMorph;
		addMorphBack: secondMorph.
	
	timeline
		tootMorphs: {firstMorph. secondMorph} asOrderedCollection;
		removeAllTootMorphs.
	
	self deny: (timeline submorphs includes: firstMorph).
	self deny: (timeline submorphs includes: secondMorph)