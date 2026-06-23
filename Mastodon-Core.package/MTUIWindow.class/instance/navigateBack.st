views
navigateBack

	| entry |
	self viewHistory isEmpty ifTrue: [^ self].
	entry := self viewHistory removeLast.

	self updateViewMorph: entry key.
	self scrollMorph scroller offset: entry value.
	self scrollMorph setScrollDeltas.
	self layoutChanged