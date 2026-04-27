actions
authenticateApplication
	| baseURL token authorizationLink |
	baseURL := urlTextField theText asString.
	token := tokenTextField theText asString.

	(baseURL endsWith: '/') ifTrue: [baseURL := baseURL allButLast].
	self mastodonApi baseURL: baseURL.
	MTSettingsStore default at: #baseURL put: baseURL.

	token isEmpty
		ifTrue: [
			self mastodonApi token: nil.
			authorizationLink := self authorizationLinkFor: baseURL.
			resultTextLabel contents: ('<i>Open link, authorize app, then paste token here:</i><br><b>', authorizationLink, '</b>') asHtmlText.
			^ false].

	self mastodonApi token: token.
	MTSettingsStore default at: #token put: token.
	self verifyAccount.