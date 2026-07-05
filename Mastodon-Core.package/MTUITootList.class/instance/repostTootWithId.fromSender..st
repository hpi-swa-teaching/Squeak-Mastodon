actions
repostTootWithId: anInteger fromSender: aButton

	| toot result |
	self toots ifNil: [^ self].
	toot := (self toots collect: [:t | t reblogOrSelf]) detect: [:t | t id = anInteger] ifNone: [nil].
	aButton active
		ifTrue: [
			result := self socialProvider unreblog: anInteger.
			result isError ifTrue: [^ self inform: result error].
			toot ifNotNil: [toot reblogged: false].
			aButton active: false]
		ifFalse: [
			result := self socialProvider reblog: anInteger.
			result isError ifTrue: [^ self inform: result error].
			toot ifNotNil: [toot reblogged: true].
			aButton active: true]