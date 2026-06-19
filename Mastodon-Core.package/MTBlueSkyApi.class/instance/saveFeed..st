endpoints
saveFeed: aFeed
	| preferencesResult preferences items newPreferences |
	preferencesResult := self getPreferences.
	preferencesResult isError ifTrue: [^ preferencesResult].
	preferences := preferencesResult value.
	items := self savedFeedItemsFromPreferences: preferences.
	(items detect: [:item | (item at: 'value' ifAbsent: ['']) = aFeed uri] ifNone: [nil])
		ifNil: [items add: (self savedFeedItemFor: aFeed)].
	newPreferences := self preferencesWithoutSavedFeedsIn: preferences.
	newPreferences add: (Dictionary new
		at: '$type' put: 'app.bsky.actor.defs#savedFeedsPrefV2';
		at: 'items' put: items;
		yourself).
	^ self putPreferences: newPreferences
