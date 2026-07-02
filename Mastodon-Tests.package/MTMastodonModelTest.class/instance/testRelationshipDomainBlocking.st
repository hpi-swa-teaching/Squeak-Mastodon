tests
testRelationshipDomainBlocking

	| Model |
	Model := MTRelationship new.
	
	Model domainBlocking: 'domain'.
	
	self assert: Model domainBlocking equals: 'domain'