updating
refreshToots

	| toots |
	self mastodonApi hasToken ifFalse: [^ false].
	
	toots := self getMoreTootsSince: self maxID.
	
	self prependToots: toots