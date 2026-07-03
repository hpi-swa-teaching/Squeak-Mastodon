actions
favoriteTootWithId: aTootId fromSender: aButton

	| toot argument result |
	self toots ifNil: [^ self].
	toot := (self toots collect: [:t | t reblogOrSelf]) detect: [:t | t id = aTootId] ifNone: [nil].
	argument := (self socialProvider isKindOf: MTBlueSkyApi) ifTrue: [toot] ifFalse: [aTootId].
	argument ifNil: [^ self].
	aButton active
		ifTrue: [
			result := self socialProvider unfavourite: argument.
			result isError ifTrue: [^ self inform: result error].
			toot ifNotNil: [toot favourited: false].
			aButton active: false]
		ifFalse: [
			result := self socialProvider favourite: argument.
			result isError ifTrue: [^ self inform: result error].
			toot ifNotNil: [toot favourited: true].
			aButton active: true]