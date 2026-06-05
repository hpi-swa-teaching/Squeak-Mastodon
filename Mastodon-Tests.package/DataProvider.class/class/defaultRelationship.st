generated
defaultRelationship

	| relationship |
	relationship := Dictionary new.
	
	relationship at: 'id' put: self defaultRelationshipId.
	relationship at: 'blocking' put: true.
	relationship at: 'domainBlocking' put: true.
	relationship at: 'followed_by' put: true.
	relationship at: 'following' put: true.
	relationship at: 'muting' put: true.
	relationship at: 'requested' put: true.
	
	^ relationship