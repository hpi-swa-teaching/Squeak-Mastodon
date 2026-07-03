updating
refreshToots

	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^ self].
	newToots := self collectArchived: self getNewMentions.
	newToots ifNotEmpty: (self prependToots: newToots value)