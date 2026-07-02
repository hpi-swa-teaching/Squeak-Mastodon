updating
loadToots

	| result page |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	result := mastodonApi getLikesPageWithCursor: nil.
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	
	page := result value.
	likeCursor := page cursor.
	self setToots: page toots.
	^ true