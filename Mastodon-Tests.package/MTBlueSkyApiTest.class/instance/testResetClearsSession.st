accessing
testResetClearsSession

	| api |
	api := MTBlueSkyApi with: 'https://bsky.social' token: 'a-token'.
	api username: 'alice'.
	api instVarNamed: 'did' put: 'did:plc:alice'.

	api reset.

	self assert: api token equals: nil.
	self assert: api baseURL equals: nil.
	self assert: api username equals: nil.
	self assert: (api instVarNamed: 'did') equals: nil