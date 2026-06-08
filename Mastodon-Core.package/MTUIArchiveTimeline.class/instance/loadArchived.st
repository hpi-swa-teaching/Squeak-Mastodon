as yet unclassified
loadArchived

	self mastodonApi isAuthenticated ifFalse: [^ false].
	self collectArchived.