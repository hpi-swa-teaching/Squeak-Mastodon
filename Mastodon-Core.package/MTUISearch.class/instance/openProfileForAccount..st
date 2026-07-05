actions
openProfileForAccount: anAccount

	| result |
	result := self socialProvider getProfileFor: anAccount acct.
	result isError ifTrue: [
		self inform: 'Could not load profile'.
		^ self].
	(self ownerThatIsA: MTUIWindow) loadProfileViewOf: result value