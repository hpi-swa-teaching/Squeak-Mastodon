accessing
active: aBool

	super active: aBool.
	aBool 
		ifTrue: [self labelGraphic: MTUIIcons reblogActive] 
		ifFalse: [self labelGraphic: MTUIIcons reblog].
	self setBalloonText: (aBool ifTrue: ['Unreblog toot'] ifFalse: ['Reblog toot'])
	
