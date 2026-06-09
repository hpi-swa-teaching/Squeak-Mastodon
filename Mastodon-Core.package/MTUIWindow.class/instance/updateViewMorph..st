render
updateViewMorph: aMorph

	self scrollMorph scroller hasSubmorphs ifTrue: [self scrollMorph scroller removeMorph: self viewMorph].
	
	self viewMorph: aMorph.
	self addViewMorph