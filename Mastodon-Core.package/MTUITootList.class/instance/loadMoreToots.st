updating
loadMoreToots

	| toots |
	self mastodonApi hasToken ifFalse: [^ false].
	
	toots := self getMoreTootsUpTo: self minID - 1.
	
	self appendToots: toots