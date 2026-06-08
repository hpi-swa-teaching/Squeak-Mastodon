render
loadMentions

	self mastodonApi isAuthenticated ifFalse: [^ false].
	self collectMentions.
	self addArchiveNavigationButton.
	^ self