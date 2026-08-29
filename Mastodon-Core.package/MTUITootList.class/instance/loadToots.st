updating
loadToots

	| result |
	self socialProvider isAuthenticated ifFalse: [^ false].
	
	result := self socialProvider getPrivateTimeline.
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	
	self setToots: result value.
	^ true