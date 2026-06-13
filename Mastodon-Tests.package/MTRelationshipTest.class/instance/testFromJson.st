json
testFromJson

	| relationship |
	relationship := MTRelationship from: DataProvider defaultRelationshipJsonObject.
	
	self assert: relationship id equals: DataProvider defaultRelationshipId.
	self assert: relationship blocking equals: true.
	self assert: relationship domainBlocking equals: true.
	self assert: relationship followedBy equals: true.
	self assert: relationship following equals: true.
	self assert: relationship muting equals: true.
	self assert: relationship requested equals: true.