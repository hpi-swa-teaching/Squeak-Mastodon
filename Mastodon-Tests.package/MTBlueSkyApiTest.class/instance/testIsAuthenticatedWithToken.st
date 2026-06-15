tests
testIsAuthenticatedWithToken
	| api |
	api := MTBlueSkyApi with: 'alice.bsky.social' token: 'jwt-token'.

	self assert: api hasToken equals: true
