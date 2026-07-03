initialization
initialize

	super initialize.
	
	loadedViews := Dictionary new.
	menuMorph := MTUIMenu new.
	scrollMorph := MTUIScrollPane new.
	
	self socialProvider: MTProviderFactory providerFromSettings.
	
	self
		setLabel: self socialProvider displayName;
		paneColor: Color veryVeryLightGray;
		addMenuMorph;
		addScrollMorph.
	self loadSettingsView