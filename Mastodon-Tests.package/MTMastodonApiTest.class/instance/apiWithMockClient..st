support
apiWithMockClient: aClient

	| api |
	api := MTMastodonApi with: 'https://mastodon.social' token: nil.
	api instVarNamed: 'webClient' put: aClient.
	^ api