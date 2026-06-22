actions
getAuthorizationLink

	| baseUrl credentials authorizationLink displayAuthorizationLink |
	baseUrl := self getFormattedBaseUrl.
	credentials := MTLoginCredentials for: baseUrl token: ''.
	
	self temporaryApi: (MTMastodonApi for: credentials).
	authorizationLink := self authorizationLink ifNil: [^ false].
	
	self renderAuthorizationView.
		
	Clipboard clipboardText: authorizationLink.
	displayAuthorizationLink := authorizationLink copyReplaceAll: '&' with: '&amp;'.
	self resultTextMorph contents: ('<i>Authorization URL copied to clipboard.<br>Open link, authorize app, then paste OAuth code here.</i><br><b>', displayAuthorizationLink, '</b>') asHtmlText