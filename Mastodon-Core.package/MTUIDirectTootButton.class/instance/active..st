as yet unclassified
active: aBool 
	super active: aBool.
	aBool
		ifTrue: [self labelGraphic: MTUIIcons directMessage]
		ifFalse: [self labelGraphic: MTUIIcons directMessage]