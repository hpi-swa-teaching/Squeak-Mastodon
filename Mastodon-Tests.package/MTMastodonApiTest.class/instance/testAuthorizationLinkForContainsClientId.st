authentication
testAuthorizationLinkForContainsClientId

	| api link |
	api := MTMastodonApi new.
	api clientID: 'a-client-id'.
	
	link := api authorizationLinkFor: 'https://mastodon.social'.
	
	self assert: (link beginsWith: 'https://mastodon.social/oauth/authorize').
	self assert: (link includesSubstring: 'client_id=a-client-id')