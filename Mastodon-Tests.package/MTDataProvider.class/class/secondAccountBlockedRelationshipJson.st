json-relationships
secondAccountBlockedRelationshipJson

	^ self secondAccountRelationshipJson
		at: 'blocking' put: true;
		yourself