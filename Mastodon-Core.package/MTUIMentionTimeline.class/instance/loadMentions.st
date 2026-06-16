render
loadMentions

	self mastodonApi isAuthenticated ifFalse: [^ false].
	self addArchiveNavigationButton.
	self setToots: (self collectMentions: self getMentions) value.
	^ self