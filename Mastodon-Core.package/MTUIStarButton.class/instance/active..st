accessing
active: aBool

	super active: aBool.
	self active
		ifTrue: [self labelGraphic: MTUIIcons starActive]
		ifFalse: [self labelGraphic: MTUIIcons star]