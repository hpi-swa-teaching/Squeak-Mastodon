actions
doInactiveActionFor: anAccountID

	| cachedRelationship |
	cachedRelationship := MTRelationshipCache default retrieveValueForKey: anAccountID.
	
	self mastodonApi follow: anAccountID.
	
	cachedRelationship ifNotNil: [cachedRelationship following: true]