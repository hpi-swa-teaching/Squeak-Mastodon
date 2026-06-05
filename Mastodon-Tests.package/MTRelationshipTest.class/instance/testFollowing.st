getter/setter
testFollowing

	| relationship |
	relationship := MTRelationship new.
	
	relationship following: 'true'.
	
	self assert: relationship following equals: 'true'