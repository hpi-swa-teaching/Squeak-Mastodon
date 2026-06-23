initialization
initialize

	super initialize.
	
	self loadedViews: Dictionary new.
	self menuMorph: MTUIMenu new.
	self scrollMorph: ScrollPane new.
	self viewHistory: OrderedCollection new.
	
	self
		setLabel: self mastodonApi displayName;
		addMenuMorph;
		addScrollMorph.
	self mastodonApi hasToken ifTrue: [self loadNewTootView] ifFalse: [self loadChooseAccountView]