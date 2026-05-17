initialization
initialize
	super initialize.
	
	loadedViews := Dictionary new.
	menuMorph := MTUIMenu new.
	scrollMorph := MTUIScrollPane new.
	
	MTSettingsStore reset.
	MTPreferences createAllPreferences.
	
	self mastodonApi: (MTMastodonApi 
						with: MTPreferences baseURL
						token: MTPreferences accessToken).

	self setLabel: 'Mastodon';
		paneColor: Color veryVeryLightGray;
		addMenuMorph;
		addScrollMorph.

	self mastodonApi token isEmpty
		ifFalse: [self loadSettingsView] 
		ifTrue: [self loadNewTootView]
	