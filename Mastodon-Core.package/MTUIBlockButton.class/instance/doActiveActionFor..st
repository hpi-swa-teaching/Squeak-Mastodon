actions
doActiveActionFor: anAccountID

	| cachedRelationship |
	cachedRelationship := MTRelationshipCache default retrieveValueForKey: anAccountID.
	
	self mastodonApi unblock: anAccountID.
	
	cachedRelationship ifNotNil: [cachedRelationship blocking: false]