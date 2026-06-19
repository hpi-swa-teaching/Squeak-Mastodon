views
goBackToFeed

	previousViewMorph ifNil: [^ self].

	self updateViewMorph: previousViewMorph.
	previousScrollOffset ifNotNil: [:offset |
		self scrollMorph scroller offset: offset.
		self scrollMorph setScrollDeltas].
	self layoutChanged.

	previousViewMorph := nil.
	previousScrollOffset := nil