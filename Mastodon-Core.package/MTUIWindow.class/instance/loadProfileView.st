views
loadProfileView

	| currentUser |
	self refreshProvider.
	self socialProvider isAuthenticated ifFalse: [^ false].
	currentUser := self socialProvider getCurrentUser.
	currentUser isError ifTrue: [
		self inform: 'Could not load profile'.
		^ false].
	self loadProfileViewOf: currentUser value.
	^ true