endpoints
removeFeed: aFeed

	| preferencesResult preferences items newPreferences |
	aFeed isTimeline ifTrue: [^ MTResult value: true].
	preferencesResult := self getPreferences.
	preferencesResult isError ifTrue: [^ preferencesResult].
	preferences := preferencesResult value.
	items := (self savedFeedItemsFromPreferences: preferences) reject: [:item | (item at: 'value' ifAbsent: ['']) = aFeed uri].
	newPreferences := self preferencesWithoutSavedFeedsIn: preferences.
	newPreferences add: (Dictionary new
		at: '$type' put: 'app.bsky.actor.defs#savedFeedsPrefV2';
		at: 'items' put: items;
		yourself).
	^ self putPreferences: newPreferences