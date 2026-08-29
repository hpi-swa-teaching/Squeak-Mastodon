relationship
testRelationshipDomainBlocking

	| model |
	model := MTRelationship new.
	
	model domainBlocking: 'domain'.
	
	self assert: model domainBlocking equals: 'domain'