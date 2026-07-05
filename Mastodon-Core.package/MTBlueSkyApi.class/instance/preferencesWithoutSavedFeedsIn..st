helpers
preferencesWithoutSavedFeedsIn: preferences

	^ (preferences reject: [:pref |
		#('app.bsky.actor.defs#savedFeedsPrefV2' 'app.bsky.actor.defs#savedFeedsPref') includes: (pref
			at: '$type'
			ifAbsent: [''])]) asOrderedCollection