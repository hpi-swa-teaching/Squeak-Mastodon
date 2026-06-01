actions
favoriteTootWithId: aTootId fromSender: aButton
	| toot argument |
	toots ifNil: [^ self].
	toot := toots detect: [:t | t id = aTootId] ifNone: [nil].
	argument := (self mastodonApi isKindOf: MTBlueSkyApi)
		ifTrue: [toot]
		ifFalse: [aTootId].
	argument ifNil: [^ self].
	aButton active
		ifTrue: [self mastodonApi unfavourite: argument.
			toot ifNotNil: [toot favourited: false].
			aButton active: false]
		ifFalse: [self mastodonApi favourite: argument.
			toot ifNotNil: [toot favourited: true].
			aButton active: true].