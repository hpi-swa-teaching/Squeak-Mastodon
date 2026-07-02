updating
refreshToots

	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	newToots := self collectMentions: self getNewMentions.
	newToots ifNotEmpty: (self prependToots: newToots value)