authentication
testRefreshSessionReturnsFalseWithoutRefreshToken

	| api |
	api := self apiWithMockClient: MTBlueSkyMockWebClient new token: 'access-token'.
	
	self assert: api refreshToken equals: nil.
	self assert: api refreshSession equals: false