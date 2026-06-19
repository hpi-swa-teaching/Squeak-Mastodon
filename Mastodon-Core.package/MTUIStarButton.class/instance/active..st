accessing
active: aBool

	super active: aBool.
	aBool ifTrue: [self labelGraphic: MTUIIcons starActive] ifFalse: [self labelGraphic: MTUIIcons star].
	self setBalloonText: (aBool ifTrue: ['Unfavourite toot'] ifFalse: ['Favourite toot'])