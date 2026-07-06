helpers
relationshipFrom: aJson

	^ MTRelationship new
		id: (aJson at: 'id');
		following: (aJson at: 'following');
		followedBy: (aJson at: 'followed_by');
		blocking: (aJson at: 'blocking');
		muting: (aJson at: 'muting');
		requested: (aJson at: 'requested');
		domainBlocking: (aJson at: 'domain_blocking');
		yourself