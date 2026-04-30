authentification
exchangeAuthorizationCode: anAuthorizationCode
	| handle password url jsonString response json |
	handle := self baseURL copyReplaceAll: 'https://' with: ''.
	handle := handle copyReplaceAll: 'http://' with: ''.
	(handle isEmpty or: [handle = 'bsky.social']) ifTrue: [
		(anAuthorizationCode includes: $:) ifTrue: [
			handle := (anAuthorizationCode findTokens: ':') first.
			password := (anAuthorizationCode findTokens: ':') second.
		] ifFalse: [
			handle := ''.
			password := anAuthorizationCode.
		]
	] ifFalse: [
		password := anAuthorizationCode.
	].
	
	url := 'https://bsky.social/xrpc/com.atproto.server.createSession'.
	jsonString := '{ "identifier": "', handle, '", "password": "', password, '" }'.
	
	response := webClient httpPost: url
		content: jsonString
		type: 'application/json'.
		
	response isSuccess ifFalse: [^ nil].
	json := self deserialize: response content utf8ToSqueak.
	self token: (json at: 'accessJwt' ifAbsent: [nil]).
	^ self token