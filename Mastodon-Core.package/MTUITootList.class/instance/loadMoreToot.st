updating
loadMoreToot

	| newToots |
	self socialProvider isAuthenticated ifFalse: [^ false].
	
	newToots := self socialProvider getPrivateTimelineMax: self minID - 1.
	
	newToots isError ifTrue: [
		self inform: (newToots error ifNil: ['An error occurred']).
		^ false].
	
	self appendToots: newToots value.
	^ true