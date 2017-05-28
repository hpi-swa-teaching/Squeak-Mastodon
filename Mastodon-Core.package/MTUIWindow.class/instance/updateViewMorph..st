as yet unclassified
updateViewMorph: aMorph
	scrollMorph scroller hasSubmorphs ifTrue: [
		scrollMorph scroller removeMorph: viewMorph ].

	viewMorph := aMorph.
	self addViewMorph.
