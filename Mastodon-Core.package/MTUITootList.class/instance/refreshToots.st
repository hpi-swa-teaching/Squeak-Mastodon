updating
refreshToots

	| result |
	self mastodonApi hasToken ifFalse: [^false].
			
	result := self getMoreTootsSince: self maxID.
	
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	
	self prependToots: result value