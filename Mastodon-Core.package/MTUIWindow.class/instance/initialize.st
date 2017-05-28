as yet unclassified
initialize
	super initialize.
	
	loadedViews := Dictionary new.
	menuMorph := MTUIMenu new.
	scrollMorph := MTUIScrollPane new.	
	
	
	self mastodonApi: (MTMastodonApi with:
						(MTSettingsStore default at: #baseURL ifAbsent: [''] )  
						password: (MTSettingsStore default at: #password  ifAbsent: [''])
						username: (MTSettingsStore default at: #username ifAbsent: [''])).

	self setLabel: 'Mastodon';
		paneColor: Color veryVeryLightGray;
		addMenuMorph;
		addScrollMorph.
	
	self mastodonApi isAuthenticated 
		ifTrue: [self loadHomeTimelineView] 
		ifFalse: [self loadSettingsView]
	