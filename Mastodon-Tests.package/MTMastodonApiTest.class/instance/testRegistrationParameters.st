authentication
testRegistrationParameters

	| dictionary |
	dictionary := MTMastodonApi new getRegistrationParameters.
	self assert: (dictionary at: 'client_name') equals: 'SqueakMastodon'.
	self assert: (dictionary at: 'scopes') equals: 'read write follow'.
	self assert: (dictionary at: 'redirect_uris') equals: 'urn:ietf:wg:oauth:2.0:oob'