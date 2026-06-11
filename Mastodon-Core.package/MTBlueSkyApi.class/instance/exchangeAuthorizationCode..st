authentification
exchangeAuthorizationCode: anAuthorizationCode
	| handle password url jsonString response json |
	(anAuthorizationCode includes: $:) ifTrue: [
		handle := anAuthorizationCode copyUpTo: $:.
		password := anAuthorizationCode allButFirst: handle size + 1.
	] ifFalse: [
		handle := self baseURL copyReplaceAll: 'https://' with: ''.
		handle := handle copyReplaceAll: 'http://' with: ''.
		handle = 'bsky.social' ifTrue: [handle := ''].
		password := anAuthorizationCode.
	].

	url := self buildUrl: '/xrpc/com.atproto.server.createSession'.
	jsonString := '{ "identifier": "', handle, '", "password": "', password, '" }'.

	response := webClient httpPost: url
		content: jsonString
		type: 'application/json'.

	response isSuccess ifFalse: [
		^ nil].

	json := self deserialize: response content utf8ToSqueak.
	self token: (json at: 'accessJwt' ifAbsent: [nil]).
	self did: (json at: 'did' ifAbsent: [nil]).
	^ self token