actions
authenticateApplication
	| baseURL authorizationCode authorizationLink displayAuthorizationLink |
	(self applyProviderSelection) ifFalse: [^ false].
	self mastodonApi: MTProviderFactory providerFromSettings.
	baseURL := (urlTextField theText asString) withBlanksTrimmed.
	authorizationCode := (tokenTextField theText asString) withBlanksTrimmed.

	baseURL isEmpty ifFalse: [
		((baseURL beginsWith: 'https://') or: [baseURL beginsWith: 'http://'])
			ifFalse: [baseURL := 'https://', baseURL].
		(baseURL endsWith: '/') ifTrue: [baseURL := baseURL allButLast]].

	(self mastodonApi supportsFeature: #auth)
		ifFalse: [
			baseURL isEmpty ifFalse: [
				self mastodonApi baseURL: baseURL.
				MTSettingsStore default at: #baseURL put: baseURL].
			authorizationCode isEmpty ifFalse: [
				self mastodonApi token: authorizationCode.
				MTSettingsStore default at: #token put: authorizationCode].
			resultTextLabel contents: '<i>Stored provider settings.</i>' asHtmlText.
			^ true].

	self mastodonApi baseURL: baseURL.
	MTSettingsStore default at: #baseURL put: baseURL.

	authorizationCode isEmpty
		ifTrue: [
			self mastodonApi token: nil.
			self mastodonApi registerApplication.
			(self mastodonApi clientID isNil or: [self mastodonApi clientSecret isNil]) ifTrue: [
				resultTextLabel contents: '<i>Could not register app on this instance.</i>' asHtmlText.
				^ false].
			authorizationLink := self mastodonApi authorizationLinkFor: baseURL.
			displayAuthorizationLink := authorizationLink copyReplaceAll: '&' with: '&amp;'.
			resultTextLabel contents: ('<i>Open link, authorize app, then paste code here:</i><br><b>', displayAuthorizationLink, '</b>') asHtmlText.
			^ false].

	self mastodonApi token: nil.
	(self mastodonApi clientID isNil or: [self mastodonApi clientSecret isNil]) ifTrue: [
		resultTextLabel contents: '<i>No app registration found in this session. Click "Login / Get Link" to register an app for this instance, then paste the code.</i>' asHtmlText.
		^ false].
	self mastodonApi exchangeAuthorizationCode: authorizationCode.
	self mastodonApi token ifNil: [
		resultTextLabel contents: '<i>Code exchange failed. Paste code from authorize flow.</i>' asHtmlText.
		^ false].

	[
		self verifyAccount.
		MTSettingsStore default at: #token put: self mastodonApi token.
		^ true
	] on: Error do: [
		resultTextLabel contents: '<i>Code exchange succeeded, but verify_credentials failed.</i>' asHtmlText.
		^ false]