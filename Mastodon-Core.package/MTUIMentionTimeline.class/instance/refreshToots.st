updating
refreshToots

	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^ self].
	newToots := self collectMentions: self getNewMentions.
	newToots ifNotEmpty: (self prependToots: newToots value)