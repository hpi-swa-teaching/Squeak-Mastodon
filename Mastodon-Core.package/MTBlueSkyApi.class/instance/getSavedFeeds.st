endpoints
getSavedFeeds

	| preferencesResult preferences uris feeds |
	preferencesResult := self getPreferences.
	preferencesResult isError ifTrue: [^ preferencesResult].
	preferences := preferencesResult value.
	uris := self savedFeedUrisFromPreferences: preferences.
	feeds := OrderedCollection with: MTBlueSkyFeed home.
	feeds addAll: (uris collect: [:uri | | generatorResult |
		generatorResult := self getFeedGenerator: uri.
		generatorResult isSuccess ifTrue: [generatorResult value] ifFalse: [
			MTBlueSkyFeed new
				displayName: uri;
				uri: uri;
				sourceType: #feed;
				pinned: false;
				yourself]]).
	^ MTResult value: feeds