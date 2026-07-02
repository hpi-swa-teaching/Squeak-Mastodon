as yet unclassified
active: aBool

	super active: aBool.
	aBool ifTrue: [self labelGraphic: MTUIIcons replyActive] ifFalse: [self labelGraphic: MTUIIcons reply]