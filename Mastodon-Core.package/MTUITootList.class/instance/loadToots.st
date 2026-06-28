updating
loadToots

	| result |
	self mastodonApi hasToken ifFalse: [^ false].
	
	result := self getToots.
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	
	self setToots: result value.
	^ true