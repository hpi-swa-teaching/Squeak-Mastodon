initialization
initialize

	super initialize.
	
	self loadedViews: Dictionary new.
	self menuMorph: MTUIMenu new.
	self scrollMorph: MTUIScrollPane new.
	
	self mastodonApi: MTProviderFactory providerFromSettings.
	
	self
		setLabel: self mastodonApi displayName;
		addMenuMorph;
		addScrollMorph.
	self mastodonApi isAuthenticated ifTrue: [self loadNewTootView] ifFalse: [self loadSettingsView]