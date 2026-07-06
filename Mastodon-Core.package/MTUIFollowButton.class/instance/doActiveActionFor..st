actions
doActiveActionFor: anAccountID

	| cachedRelationship |
	cachedRelationship := MTRelationshipCache default retrieveValueForKey: anAccountID.
	
	self mastodonApi unfollow: anAccountID.
	
	cachedRelationship ifNotNil: [cachedRelationship following: false]