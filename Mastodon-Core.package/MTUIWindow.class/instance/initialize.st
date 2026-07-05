initialization
initialize

	super initialize.
	
	self loadedViews: Dictionary new.
	self menuMorph: MTUIMenu new.
	self scrollMorph: MTUIScrollPane new.
	
	self socialProvider: MTProviderFactory providerFromSettings.
	
	self
		setLabel: self socialProvider displayName;
		paneColor: Color veryVeryLightGray;
		addMenuMorph;
		addScrollMorph.
	self loadSettingsView