authentication
testClassConstructorSetsBaseURLAndToken

	| api |
	api := MTBlueSkyApi with: 'alice.bsky.social' token: 'jwt-token'.
	
	self assert: api baseURL equals: 'alice.bsky.social'.
	self assert: api token equals: 'jwt-token'