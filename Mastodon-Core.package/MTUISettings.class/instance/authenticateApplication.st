actions
authenticateApplication

	| baseURL authorizationCode authorizationLink displayAuthorizationLink |
	baseURL := self urlTextField theText asString withBlanksTrimmed.
	authorizationCode := self tokenTextField theText asString withBlanksTrimmed.
	
	((baseURL beginsWith: 'https://') or: [baseURL beginsWith: 'http://']) ifFalse: [baseURL := 'https://', baseURL].
	(baseURL endsWith: '/') ifTrue: [baseURL := baseURL allButLast].
	self mastodonApi baseURL: baseURL.
	MTSettingsStore default at: #baseURL put: baseURL.
	
	authorizationCode isEmpty ifTrue: [
		self mastodonApi token: nil.
		self mastodonApi registerApplication.
		(self mastodonApi clientID isNil or: [self mastodonApi clientSecret isNil]) ifTrue: [
			self resultTextLabel contents: '<i>Could not register OAuth app on this instance.</i>' asHtmlText.
			^ false].
		authorizationLink := self mastodonApi authorizationLinkFor: baseURL.
		displayAuthorizationLink := authorizationLink copyReplaceAll: '&' with: '&amp;'.
		Clipboard clipboardText: authorizationLink.
		self resultTextLabel contents: ('<i>Authorization URL copied to clipboard. <br> Open link, authorize app, then paste OAuth code here.</i><br><b>', displayAuthorizationLink, '</b>') asHtmlText.
		^ false].
	
	self mastodonApi token: nil.
	(self mastodonApi clientID isNil or: [self mastodonApi clientSecret isNil]) ifTrue: [
		self resultTextLabel contents: '<i>No app registration found in this session. Click "Login / Get Link" to register an app for this instance, then paste the OAuth code.</i>' asHtmlText.
		^ false].
	self mastodonApi exchangeAuthorizationCode: authorizationCode.
	self mastodonApi token ifNil: [
		self resultTextLabel contents: '<i>OAuth code exchange failed. Paste code from authorize flow.</i>' asHtmlText.
		^ false].
	
	[
		self verifyAccount.
		MTSettingsStore default at: #token put: self mastodonApi token.
		^ true]
		on: Error
		do: [
			self resultTextLabel contents: '<i>OAuth code exchange succeeded, but verify_credentials failed.</i>' asHtmlText.
			^ false]