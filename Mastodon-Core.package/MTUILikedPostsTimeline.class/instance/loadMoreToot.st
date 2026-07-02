updating
loadMoreToot

	| result page |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	likeCursor ifNil: [^ false].
	
	result := mastodonApi getLikesPageWithCursor: likeCursor.
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	
	page := result value.
	likeCursor := page cursor.
	self appendToots: page toots.
	^ true