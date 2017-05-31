as yet unclassified
initialize
	super initialize.
	
	loadedViews := Dictionary new.
	menuMorph := MTUIMenu new.
	scrollMorph := MTUIScrollPane new.	
	
	self mastodonApi: (MTMastodonApi with:
						(MTSettingsStore default at: #baseURL ifAbsent: [''] )  
						token: (MTSettingsStore default at: #token ifAbsent: [nil])).

	self setLabel: 'Mastodon';
		paneColor: Color veryVeryLightGray;
		addMenuMorph;
		addScrollMorph.
	
	self mastodonApi isAuthenticated
		ifTrue: [self loadNewTootView] 
		ifFalse: [self loadSettingsView]
	