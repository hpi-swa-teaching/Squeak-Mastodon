updating
loadMoreToots

	| toots |
	self mastodonApi hasToken ifFalse: [^ false].
	
	toots := self getMoreTootsUpTo: self minID.
	
	self appendToots: toots