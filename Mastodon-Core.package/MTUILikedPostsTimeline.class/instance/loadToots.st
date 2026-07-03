updating
loadToots

	| result page |
	self socialProvider isAuthenticated ifFalse: [^ false].
	
	result := self socialProvider getLikesPageWithCursor: nil.
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	
	page := result value.
	likeCursor := page cursor.
	self setToots: page toots.
	^ true