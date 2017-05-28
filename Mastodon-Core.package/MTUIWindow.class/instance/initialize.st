as yet unclassified
initialize
	super initialize.
	
	loadedViews := Dictionary new.
	menuMorph := MTUIMenu new.
	scrollMorph := MTUIScrollPane new.	
	
	
	self twitterApi: (STTwitterApi 
						consumerKey: (STSettingsStore default at: #consumerKey ifAbsent: [''] )  
						consumerSecret: (STSettingsStore default at: #consumerSecret  ifAbsent: [''])
						accessToken: (STSettingsStore default at: #accessToken ifAbsent: [''])
						accessTokenSecret: (STSettingsStore default at: #accessTokenSecret ifAbsent: [''])).

	self setLabel: 'SmallTweet';
		paneColor: Color veryVeryLightGray;
		addMenuMorph;
		addScrollMorph.
	
	"self twitterApi isAuthenticated 
		ifTrue: [self loadHomeTimelineView] 
		ifFalse: [self loadSettingsView]"
	