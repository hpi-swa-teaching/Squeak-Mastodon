helpers
assertRelationship: aResultedRelationship matches: anExpectedRelationship

	self assert: aResultedRelationship id equals: anExpectedRelationship id.
	self assert: aResultedRelationship following equals: anExpectedRelationship following.
	self assert: aResultedRelationship followedBy equals: anExpectedRelationship followedBy.
	self assert: aResultedRelationship blocking equals: anExpectedRelationship blocking.
	self assert: aResultedRelationship muting equals: anExpectedRelationship muting.
	self assert: aResultedRelationship requested equals: anExpectedRelationship requested.
	self assert: aResultedRelationship domainBlocking equals: anExpectedRelationship domainBlocking