accessing
testResetClearsSession

	| api |
	api := MTBlueSkyApi with: 'https://bsky.social' token: 'a-token'.
	api username: 'alice'.
	api refreshToken: 'a-refresh'.
	api did: 'did:plc:alice'.
	
	api reset.
	
	self assert: api token equals: nil.
	self assert: api baseURL equals: nil.
	self assert: api username equals: nil.
	self assert: api refreshToken equals: nil.
	self assert: api did equals: nil