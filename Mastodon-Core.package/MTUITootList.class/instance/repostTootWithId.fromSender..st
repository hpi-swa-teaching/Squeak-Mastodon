actions
repostTootWithId: anInteger fromSender: aButton
	| toot result |
	toots ifNil: [^ self].
	toot := (toots collect: [:t | t reblogOrSelf]) detect: [:t | t id = anInteger] ifNone: [nil].
	aButton active
		ifTrue: [result := self mastodonApi unreblog: anInteger.
			result isError ifTrue: [^ self inform: result error].
			toot ifNotNil: [toot reblogged: false].
			aButton active: false]
		ifFalse: [result := self mastodonApi reblog: anInteger.
			result isError ifTrue: [^ self inform: result error].
			toot ifNotNil: [toot reblogged: true].
			aButton active: true].