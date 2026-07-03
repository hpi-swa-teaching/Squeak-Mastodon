views
loadProfileView

	| currentUser |
	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	(self mastodonApi isKindOf: MTBlueSkyApi)
		ifTrue: [currentUser := self mastodonApi getProfileFor: self mastodonApi verifyCredentials value acct]
		ifFalse: [
			currentUser := self mastodonApi getCurrentUser.
			
			].
	
	currentUser isError ifTrue: [
		self inform: 'Could not load profile'.
		^ false].
	self loadProfileViewOf: currentUser value.
	^ true