updating
loadArchived

	self mastodonApi isAuthenticated ifFalse: [^ self].
	self setToots: (self collectArchived: self getMentions) value.