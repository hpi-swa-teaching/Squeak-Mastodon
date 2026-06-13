getter/setter
testBlocking

	| relationship |
	relationship := MTRelationship new.
	
	relationship domainBlocking: 'true'.
	
	self assert: relationship domainBlocking equals: 'true'