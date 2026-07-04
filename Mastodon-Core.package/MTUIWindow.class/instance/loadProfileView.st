views
loadProfileView

	| currentUser credentials |
	self refreshProvider.
	self socialProvider isAuthenticated ifFalse: [^ false].
	
	(self socialProvider isKindOf: MTBlueSkyApi)
		ifTrue: [
			credentials := self socialProvider verifyCredentials.
			credentials isError ifTrue: [
				self inform: 'Could not load profile'.
				^ false].
			currentUser := self socialProvider getProfileFor: credentials value acct]
		ifFalse: [currentUser := self socialProvider getCurrentUser].
	
	currentUser isError ifTrue: [
		self inform: 'Could not load profile'.
		^ false].
	self loadProfileViewOf: currentUser value.
	^ true