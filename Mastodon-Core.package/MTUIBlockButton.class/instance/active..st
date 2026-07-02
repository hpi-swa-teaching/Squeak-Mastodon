accessing
active: aBool

	super active: aBool.
	
	self active
		ifTrue: [self labelGraphic: MTUIIcons blockActive]
		ifFalse: [self labelGraphic: MTUIIcons block].
	self setBalloonText: (aBool ifTrue: ['Unblock'] ifFalse: ['Block'])