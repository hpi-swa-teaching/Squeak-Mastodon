json-relationships
secondAccountFollowingRelationshipJson

	^ self secondAccountRelationshipJson
		at: 'following' put: true;
		yourself