actions
repostTootWithId: anInteger fromSender: aButton
	| toot |
	toots ifNil: [^ self].
	toot := toots detect: [:t | t id = anInteger] ifNone: [nil].
	aButton active
		ifTrue: [self mastodonApi unreblog: anInteger.
			toot ifNotNil: [toot reblogged: false].
			aButton active: false]
		ifFalse: [self mastodonApi reblog: anInteger.
			toot ifNotNil: [toot reblogged: true].
			aButton active: true].