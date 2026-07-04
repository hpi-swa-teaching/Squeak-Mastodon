relationships
firstAccountRelationship

	| json |
	json := self firstAccountRelationshipJson.
	
	^ MTRelationship new
		id: (json at: 'id');
		following: (json at: 'following');
		followedBy: (json at: 'followed_by');
		blocking: (json at: 'blocking');
		muting: (json at: 'muting');
		requested: (json at: 'requested');
		domainBlocking: (json at: 'domain_blocking');
		yourself