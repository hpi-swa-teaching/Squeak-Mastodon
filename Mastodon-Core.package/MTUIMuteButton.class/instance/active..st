accessing
active: aBool 
	super active: aBool.
	aBool 
		ifTrue: [self labelGraphic: MTUIIcons muteActive] 
		ifFalse: [self labelGraphic: MTUIIcons mute]
	