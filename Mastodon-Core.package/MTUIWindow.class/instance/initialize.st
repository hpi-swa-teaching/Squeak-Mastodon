initialization
initialize
	super initialize.
	
	loadedViews := Dictionary new.
	menuMorph := MTUIMenu new.
	scrollMorph := MTUIScrollPane new.	
	
	self mastodonApi: MTProviderFactory providerFromSettings.

	self setLabel: self mastodonApi displayName;
		paneColor: Color veryVeryLightGray;
		addMenuMorph;
		addScrollMorph.
	self mastodonApi token notNil
		ifTrue: [self loadNewTootView]
		ifFalse: [(self mastodonApi isKindOf: MTMastodonApi)
			ifTrue: [self loadHomeTimelineView]
			ifFalse: [self loadSettingsView]]