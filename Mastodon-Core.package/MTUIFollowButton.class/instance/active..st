accessing
active: aBool 
	super active: aBool.
	aBool 
		ifTrue: [self labelGraphic: MTUIIcons followActive] 
		ifFalse: [self labelGraphic: MTUIIcons follow]
	