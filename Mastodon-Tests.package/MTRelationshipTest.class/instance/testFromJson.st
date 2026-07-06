initialization
testFromJson

	| result expected |
	result := MTRelationship from: MTDataProvider secondAccountRelationshipJson.
	
	expected := MTDataProvider secondAccountRelationship.
	
	self assertRelationship: result matches: expected