accessing
active: aBool 
	super active: aBool.
	aBool 
		ifTrue: [self labelGraphic: MTUIIcons retweetActive] 
		ifFalse: [self labelGraphic: MTUIIcons retweet]
	