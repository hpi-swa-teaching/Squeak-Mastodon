accessing
active: aBool

	super active: aBool.
	aBool 
		ifTrue: [self labelGraphic: MTUIIcons reblogActive] 
		ifFalse: [self labelGraphic: MTUIIcons reblog]
	
