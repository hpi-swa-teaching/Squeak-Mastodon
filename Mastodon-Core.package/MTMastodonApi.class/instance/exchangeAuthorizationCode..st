authentification
exchangeAuthorizationCode: anAuthorizationCode
	| url parameters response json |
	url := self buildUrl: '/oauth/token'.
	parameters := Dictionary newFromPairs: {
		'grant_type'. 'authorization_code'.
		'code'. anAuthorizationCode.
		'client_id'. 'EgPNP8MWCtZEIhgRcoN9wfD2bRWkzEebc2rew-95uNs'.
		'redirect_uri'. 'urn:ietf:wg:oauth:2.0:oob'}.

	self clientSecret ifNotNil: [parameters at: 'client_secret' put: self clientSecret].

	response := webClient httpPost: url
		content: (WebUtils encodeUrlEncodedForm: parameters)
		type: 'application/x-www-form-urlencoded'.

	response isSuccess ifFalse: [^ nil].
	json := self deserialize: response content utf8ToSqueak.
	self token: (json at: 'access_token' ifAbsent: [nil]).
	^ self token