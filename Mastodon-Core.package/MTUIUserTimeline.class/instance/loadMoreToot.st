updating
loadMoreToot

	| newToots |
	self socialProvider isAuthenticated ifFalse: [^ false].
	newToots := self socialProvider getStatuses: self id since: self minID.
	newToots isError ifTrue: [
		self inform: (newToots error ifNil: ['An error occurred']).
		^ false].
	self appendToots: newToots value.
	^ true