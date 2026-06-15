support
apiWithMockClient: aClient token: aToken
	| api |
	api := MTBlueSkyApi with: 'https://bsky.social' token: aToken.
	api instVarNamed: 'webClient' put: aClient.
	^ api
