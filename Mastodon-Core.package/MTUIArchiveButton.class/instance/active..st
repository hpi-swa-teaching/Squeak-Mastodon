as yet unclassified
active: aBool

	super active: aBool.
	aBool
		ifTrue: [self labelGraphic: MTUIIcons archiveActive]
		ifFalse: [self labelGraphic: MTUIIcons archive]