updating
refreshToots

	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	newToots := self collectArchived: self getNewMentions.
	newToots ifNotEmpty: (self prependToots: newToots value)