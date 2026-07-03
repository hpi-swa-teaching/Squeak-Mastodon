updating
refreshToots

	| newToots |
	self socialProvider isAuthenticated ifFalse: [^ false].
	
	newToots := self socialProvider getPrivateTimelineSince: self maxID.
	
	newToots isError ifTrue: [
		self inform: (newToots error ifNil: ['An error occurred']).
		^ false].
	
	self prependToots: newToots value.
	^ true