actions
authenticateApplication
	| baseURL authorizationCode authorizationLink displayAuthorizationLink |
	baseURL := (urlTextField theText asString) withBlanksTrimmed.
	authorizationCode := (tokenTextField theText asString) withBlanksTrimmed.

	((baseURL beginsWith: 'https://') or: [baseURL beginsWith: 'http://'])
		ifFalse: [baseURL := 'https://', baseURL].
	(baseURL endsWith: '/') ifTrue: [baseURL := baseURL allButLast].
	self mastodonApi baseURL: baseURL.
	MTSettingsStore default at: #baseURL put: baseURL.

	authorizationCode isEmpty
		ifTrue: [
			self mastodonApi token: nil.
			self mastodonApi registerApplication.
			(self mastodonApi clientID isNil or: [self mastodonApi clientSecret isNil]) ifTrue: [
				resultTextLabel contents: '<i>Could not register OAuth app on this instance.</i>' asHtmlText.
				^ false].
			MTSettingsStore default at: #clientID put: self mastodonApi clientID.
			MTSettingsStore default at: #clientSecret put: self mastodonApi clientSecret.
			authorizationLink := self authorizationLinkFor: baseURL clientID: self mastodonApi clientID.
			displayAuthorizationLink := authorizationLink copyReplaceAll: '&' with: '&amp;'.
			resultTextLabel contents: ('<i>Open link, authorize app, then paste OAuth code here:</i><br><b>', displayAuthorizationLink, '</b>') asHtmlText.
			^ false].

	MTSettingsStore default at: #oauthCode put: authorizationCode.

	self mastodonApi token: nil.
	self mastodonApi clientID: (MTSettingsStore default at: #clientID ifAbsent: [nil]).
	self mastodonApi clientSecret: (MTSettingsStore default at: #clientSecret ifAbsent: [nil]).
	(self mastodonApi clientID isNil or: [self mastodonApi clientSecret isNil]) ifTrue: [
		resultTextLabel contents: '<i>Missing OAuth app credentials. Click "Login / Get Link" once without code first.</i>' asHtmlText.
		^ false].
	self mastodonApi exchangeAuthorizationCode: authorizationCode.
	self mastodonApi token ifNil: [
		resultTextLabel contents: '<i>OAuth code exchange failed. Paste code from authorize flow.</i>' asHtmlText.
		^ false].

	[
		self verifyAccount.
		MTSettingsStore default at: #token put: self mastodonApi token.
		^ true
	] on: Error do: [
		resultTextLabel contents: '<i>OAuth code exchange succeeded, but verify_credentials failed.</i>' asHtmlText.
		^ false]