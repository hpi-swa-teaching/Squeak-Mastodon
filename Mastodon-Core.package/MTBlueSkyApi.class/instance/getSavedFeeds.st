endpoints
getSavedFeeds

	| preferencesResult preferences uris feeds generatorResult feed |
	preferencesResult := self getPreferences.
	preferencesResult isError ifTrue: [^ preferencesResult].
	preferences := preferencesResult value.
	feeds := OrderedCollection with: MTBlueSkyFeed home.
	uris := self savedFeedUrisFromPreferences: preferences.
	uris do: [:uri |
		generatorResult := self getFeedGenerator: uri.
		feed := generatorResult isSuccess ifTrue: [generatorResult value] ifFalse: [
			MTBlueSkyFeed new
				displayName: uri;
				uri: uri;
				sourceType: #feed;
				pinned: false;
				yourself].
		feeds add: feed].
	^ MTResult value: feeds