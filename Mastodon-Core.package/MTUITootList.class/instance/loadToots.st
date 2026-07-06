updating
loadToots

	| toots |
	self mastodonApi hasToken ifFalse: [^ false].
	
	toots := self getToots.
	
	self setToots: toots.
	
	^ true