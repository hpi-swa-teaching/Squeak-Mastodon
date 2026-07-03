views
loadProfileView

	| currentUser |
	self refreshProvider.
	self socialProvider isAuthenticated ifFalse: [^ false].
	
	(self socialProvider isKindOf: MTBlueSkyApi)
		ifTrue: [currentUser := self socialProvider getProfileFor: self socialProvider verifyCredentials value acct]
		ifFalse: [
			currentUser := self socialProvider getCurrentUser.
			
			].
	
	currentUser isError ifTrue: [
		self inform: 'Could not load profile'.
		^ false].
	self loadProfileViewOf: currentUser value.
	^ true