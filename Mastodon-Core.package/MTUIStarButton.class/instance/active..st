accessing
active: aBool 
	super active: aBool.
	aBool 
		ifTrue: [self labelGraphic: MTUIIcons starActive] 
		ifFalse: [self labelGraphic: MTUIIcons star].