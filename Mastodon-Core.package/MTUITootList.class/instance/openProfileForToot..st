actions
openProfileForToot: aToot

	| result |
	result := self mastodonApi getProfileFor: aToot acct acct.
	result isError ifTrue: [
		UIManager default inform: 'Could not load profile'.
		^ self].
	(self ownerThatIsA: MTUIWindow) loadProfileViewOf: result value