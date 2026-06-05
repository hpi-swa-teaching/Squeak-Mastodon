getter/setter
testMuting

	| relationship |
	relationship := MTRelationship new.
	
	relationship muting: 'true'.
	
	self assert: relationship muting equals: 'true'