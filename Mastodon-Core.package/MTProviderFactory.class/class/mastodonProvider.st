accessing
mastodonProvider

	| baseURL token |
	baseURL := self baseURL.
	token := self token.
	
	(mastodonInstance notNil and: [mastodonInstance baseURL = baseURL]) ifTrue: [
		mastodonInstance token: token.
		^ mastodonInstance].
	
	^ mastodonInstance := MTMastodonApi with: baseURL token: token