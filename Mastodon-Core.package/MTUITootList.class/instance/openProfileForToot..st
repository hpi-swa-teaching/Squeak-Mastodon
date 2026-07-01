actions
openProfileForToot: aToot
	| result |
	result := self mastodonApi getProfileFor: aToot acct acct.
	result isError ifTrue: [
		self inform: 'Could not load profile'.
		^ self
	].
	(self ownerThatIsA: MTUIWindow) loadProfileViewOf: result value.