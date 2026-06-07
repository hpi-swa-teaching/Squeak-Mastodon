getter/setter
testRequested

	| relationship |
	relationship := MTRelationship new.
	
	relationship requested: 'true'.
	
	self assert: relationship requested equals: 'true'