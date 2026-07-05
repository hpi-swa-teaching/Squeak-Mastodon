actions
doInactiveActionFor: anAccountID

	| cachedRelationship |
	cachedRelationship := MTRelationshipCache default retrieveValueForKey: anAccountID.
	
	self mastodonApi block: anAccountID.
	
	cachedRelationship ifNotNil: [cachedRelationship blocking: true]