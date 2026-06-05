getter/setter
testId

	| relationship |
	relationship := MTRelationship new.
	
	relationship id: DataProvider defaultRelationshipId.
	
	self assert: relationship id equals: DataProvider defaultRelationshipId