getter/setter
testFollowedBy

	| relationship |
	relationship := MTRelationship new.
	
	relationship followedBy: 'true'.
	
	self assert: relationship followedBy equals: 'true'