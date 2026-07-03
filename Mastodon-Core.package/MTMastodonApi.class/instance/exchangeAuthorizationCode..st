authentication
exchangeAuthorizationCode: anAuthorizationCode

	| url parameters response json |
	(self clientID isNil or: [self clientSecret isNil]) ifTrue: [^ nil].
	
	url := self buildUrl: '/oauth/token'.
	parameters := Dictionary newFromPairs: {
		'grant_type'.
		'authorization_code'.
		'code'.
		anAuthorizationCode.
		'client_id'.
		self clientID.
		'client_secret'.
		self clientSecret.
		'redirect_uri'.
		'urn:ietf:wg:oauth:2.0:oob'}.
	
	response := self retryNetworkRequest: [
		self webClient
			httpPost: url
			content: (WebUtils encodeUrlEncodedForm: parameters)
			type: 'application/x-www-form-urlencoded'].
	
	response ifNil: [^ nil].
	response isSuccess ifFalse: [^ nil].
	json := self deserialize: response content utf8ToSqueak.
	self token: (json at: 'access_token' ifAbsent: [nil]).
	^ self token