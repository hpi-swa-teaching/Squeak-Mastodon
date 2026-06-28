initialization
initialize

	super initialize.
	
	self loadedViews: Dictionary new.
	self menuMorph: MTUIMenu new.
	self scrollMorph: MTUIScrollPane new.
	
	self
		setLabel: self mastodonApi displayName;
		addMenuMorph;
		addScrollMorph.
	self mastodonApi hasToken ifTrue: [self loadNewTootView] ifFalse: [self loadChooseAccountView]