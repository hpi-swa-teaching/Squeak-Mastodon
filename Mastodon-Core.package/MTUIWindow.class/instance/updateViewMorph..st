render
updateViewMorph: aMorph

	self scrollMorph scroller hasSubmorphs ifTrue: [self scrollMorph scroller removeMorph: self viewMorph].
	
	viewMorph := aMorph.
	self addViewMorph