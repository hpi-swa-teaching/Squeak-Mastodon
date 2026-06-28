accessing
active: aBool

	super active: aBool.
	
	self active
		ifTrue: [self labelGraphic: MTUIIcons muteActive]
		ifFalse: [self labelGraphic: MTUIIcons mute]