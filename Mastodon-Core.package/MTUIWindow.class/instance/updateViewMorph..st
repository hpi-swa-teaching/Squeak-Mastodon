views-helpers
updateViewMorph: aMorph

	self viewMorph ifNotNil: [self viewMorph close].
	self viewMorph: aMorph.
	self addViewMorph.
	self scrollMorph scrollToTop