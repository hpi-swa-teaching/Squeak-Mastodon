actions
authenticateApplication
	| baseURL token authorizationLink |
	baseURL := urlTextField theText asString.
	token := tokenTextField theText asString.

	((baseURL beginsWith: 'https://') or: [baseURL beginsWith: 'http://'])
		ifFalse: [baseURL := 'https://', baseURL].
	(baseURL endsWith: '/') ifTrue: [baseURL := baseURL allButLast].
	self mastodonApi baseURL: baseURL.
	MTSettingsStore default at: #baseURL put: baseURL.

	token isEmpty
		ifTrue: [
			self mastodonApi token: nil.
			authorizationLink := self authorizationLinkFor: baseURL.
			resultTextLabel contents: ('<i>Open link, authorize app, then paste token or code here:</i><br><b>', authorizationLink, '</b>') asHtmlText.
			^ false].

	self mastodonApi token: token.
	[
		self verifyAccount.
		MTSettingsStore default at: #token put: token.
		^ true
	] on: Error do: [
		self mastodonApi exchangeAuthorizationCode: token.
		self mastodonApi token ifNil: [
			resultTextLabel contents: '<i>Login failed. Paste access token or OAuth code from authorize flow.</i>' asHtmlText.
			^ false].
		[
			self verifyAccount.
			MTSettingsStore default at: #token put: self mastodonApi token.
			^ true
		] on: Error do: [
			resultTextLabel contents: '<i>Token/code was accepted but verify_credentials failed.</i>' asHtmlText.
			^ false]]