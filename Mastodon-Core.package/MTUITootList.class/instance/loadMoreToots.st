updating
loadMoreToots

	| result |
	self mastodonApi hasToken ifFalse: [^ false].
	
	result := self getMoreTootsUpTo: self minID - 1.
	
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	
	self appendToots: result value