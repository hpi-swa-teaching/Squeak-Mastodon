actions
favoriteTootWithId: aTootId fromSender: aSender
	| toot argument |
	toots ifNil: [^ self].
	toot := toots detect: [:t | t id = aTootId] ifNone: [nil].
	argument := (self mastodonApi isKindOf: MTBlueSkyApi)
		ifTrue: [toot]
		ifFalse: [aTootId].
	argument ifNil: [^ self].
	(self mastodonApi favourite: argument)
		ifNotNil: [:result | 
			result isError
				ifTrue: [self inform: result value]
				ifFalse: [self updateToots]]
		ifNil: [self inform: 'Unknown error from API'].
	self changed: #getLabel.
	self changed: #tootViews.