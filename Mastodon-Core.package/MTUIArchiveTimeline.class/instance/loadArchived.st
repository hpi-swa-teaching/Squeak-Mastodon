as yet unclassified
loadArchived

	self mastodonApi isAuthenticated ifFalse: [^ false].
	self setToots: (self collectArchived: self getMentions) value.