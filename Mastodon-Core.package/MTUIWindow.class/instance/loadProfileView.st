views
loadProfileView

	| currentUser |
	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	(self mastodonApi isKindOf: MTBlueSkyApi)
		ifTrue: [currentUser := self mastodonApi getProfileFor: self mastodonApi verifyCredentials value acct]
		ifFalse: [
			currentUser := mastodonApi getCurrentUser.
			
			].
	
	currentUser isError ifTrue: [
		self inform: 'Could not load profile'.
		^ self].
	self loadProfileViewOf: currentUser value