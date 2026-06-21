actions
authenticateApplication

	| baseURL token authorizationLink displayAuthorizationLink credentials |
	token := self getFormattedToken.
	baseURL := self getFormattedBaseUrl.
	
	self mastodonApi hasOAuthCredentials ifTrue: [
		(self mastodonApi exchangeAuthorizationCode: token) ifNil: [^ false].
		self verifyAccount.
		MTCredentialStore addCredentials: self getCurrentCredentials.
		^ true].
	
	credentials := MTLoginCredentials for: baseURL token: token.
	MTMastodonApi changeInstanceTo: credentials.
	self getAuthorizationLink ifNil: [
		resultTextLabel contents: ''.
		^ false].
	
	authorizationLink := self mastodonApi authorizationLink.
	displayAuthorizationLink := authorizationLink copyReplaceAll: '&' with: '&amp;'.
	Clipboard clipboardText: authorizationLink.
	resultTextLabel contents: ('<i>Authorization URL copied to clipboard.<br>Open link, authorize app, then paste OAuth code here.</i><br><b>', displayAuthorizationLink, '</b>') asHtmlText.
	^ false