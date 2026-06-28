initialization
initialize

	super initialize.
	
	self
		loadedViews: Dictionary new;
		menuMorph: MTUIMenu new;
		scrollMorph: ScrollPane new;
		minimumExtent: 600 @ 500;
		setLabel: self mastodonApi displayName;
		addMenuMorph;
		addScrollMorph.
	self mastodonApi hasToken ifTrue: [self loadNewTootView] ifFalse: [self loadChooseAccountView]