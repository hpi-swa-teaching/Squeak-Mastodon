initialization
initialize

	super initialize.
	
	self
		setLabel: self mastodonApi displayName;
		render.
	
	self loadApropiateView