updating
loadMentions

	self mastodonApi isAuthenticated ifFalse: [^ self].
	self addArchiveNavigationButton.
	self setToots: (self collectMentions: self getMentions) value.
	^ self