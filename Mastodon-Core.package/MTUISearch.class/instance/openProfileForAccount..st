actions
openProfileForAccount: anAccount

	| result |
	result := self mastodonApi getProfileFor: anAccount acct.
	result isError ifTrue: [
		self inform: 'Could not load profile'.
		^ self].
	(self ownerThatIsA: MTUIWindow) loadProfileViewOf: result value