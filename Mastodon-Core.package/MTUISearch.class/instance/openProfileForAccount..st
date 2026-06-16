actions
openProfileForAccount: anAccount
	| result |
	result := self mastodonApi getProfileFor: anAccount acct.
	result isError ifTrue: [
		UIManager default inform: 'Could not load profile'.
		^ self].
	(self ownerThatIsA: MTUIWindow) loadProfileViewOf: result value