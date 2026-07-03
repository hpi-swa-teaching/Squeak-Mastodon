updating
loadTootsOf: aMTUser

	| result |
	self socialProvider isAuthenticated ifFalse: [^ false].
	
	result := self socialProvider getStatuses: aMTUser id.
	
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	
	self setToots: result value.
	self render.
	^ true