authentication
testExchangeAuthorizationCodeReturnsNilWithoutClient

	| api |
	api := self apiWithMockClient: MTBlueSkyMockWebClient new.
	self assert: (api exchangeAuthorizationCode: 'auth-code') equals: nil