initialization
initialize

	super initialize.
	
	loadedViews := Dictionary new.
	menuMorph := MTUIMenu new.
	scrollMorph := MTUIScrollPane new.
	
	self mastodonApi: MTProviderFactory providerFromSettings.
	
	self
		setLabel: self mastodonApi displayName;
		paneColor: Color veryVeryLightGray;
		addMenuMorph;
		addScrollMorph.
	self loadSettingsView