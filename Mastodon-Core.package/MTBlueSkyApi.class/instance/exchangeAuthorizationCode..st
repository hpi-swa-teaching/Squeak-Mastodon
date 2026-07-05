authentication
exchangeAuthorizationCode: anAuthorizationCode

	| handle password url jsonString response json |
	handle := self baseURL copyReplaceAll: 'https://' with: ''.
	handle := handle copyReplaceAll: 'http://' with: ''.
	(handle beginsWith: '@') ifTrue: [handle := handle allButFirst].
	(handle isEmpty or: [handle = 'bsky.social'])
		ifTrue: [
			(anAuthorizationCode includes: $:)
				ifTrue: [
					handle := anAuthorizationCode copyUpTo: $:.
					password := anAuthorizationCode copyAfter: $:]
				ifFalse: [
					handle := ''.
					password := anAuthorizationCode]]
		ifFalse: [password := anAuthorizationCode].
	
	url := self buildUrl: '/xrpc/com.atproto.server.createSession'.
	jsonString := '{ "identifier": "', handle, '", "password": "', password, '" }'.
	
	self webClient close.
	response := self retryNetworkRequest: [
		self webClient httpPost: url content: jsonString type: 'application/json' do: [:req |
			req addHeader: 'Accept-Encoding' value: 'identity'.
			req addHeader: 'Connection' value: 'close']].
	
	response ifNil: [^ nil].
	response isSuccess ifFalse: [^ nil].
	
	json := self deserialize: response content utf8ToSqueak.
	self token: (json at: 'accessJwt' ifAbsent: [nil]).
	self did: (json at: 'did' ifAbsent: [nil]).
	self refreshToken: (json at: 'refreshJwt' ifAbsent: [nil]).
	^ self token