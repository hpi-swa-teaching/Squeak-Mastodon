actions
blockAccount: anID

	| cache |
	cache := MTRelationshipCache default retrieveValueForKey: anID.
	self active
		ifTrue: [
			self mastodonApi unblock: anID.
			cache ifNotNil: [cache blocking: false].
			self active: false]
		ifFalse: [
			self mastodonApi block: anID.
			cache ifNotNil: [cache blocking: true].
			self active: true]