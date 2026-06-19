helpers
preferencesWithoutSavedFeedsIn: preferences
	| result |
	result := OrderedCollection new.
	preferences do: [:pref |
		| type |
		type := pref at: '$type' ifAbsent: [''].
		((type = 'app.bsky.actor.defs#savedFeedsPrefV2') or: [type = 'app.bsky.actor.defs#savedFeedsPref'])
			ifFalse: [result add: pref]].
	^ result
