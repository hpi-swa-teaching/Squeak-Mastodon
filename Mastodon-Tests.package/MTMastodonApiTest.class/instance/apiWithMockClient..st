support
apiWithMockClient: aClient

	| api |
	api := MTMastodonApi with: 'https://mastodon.social' token: nil.
	api webClient: aClient.
	^ api