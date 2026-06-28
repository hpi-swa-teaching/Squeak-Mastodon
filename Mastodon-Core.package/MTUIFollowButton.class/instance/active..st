accessing
active: aBool

	super active: aBool.
	
	self active
		ifTrue: [self labelGraphic: MTUIIcons followActive]
		ifFalse: [self labelGraphic: MTUIIcons follow].
	self setBalloonText: (aBool ifTrue: ['Unfollow'] ifFalse: ['Follow'])