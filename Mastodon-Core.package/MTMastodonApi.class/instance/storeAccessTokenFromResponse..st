helpers-authentification
storeAccessTokenFromResponse: response

	| json accessToken |
	json := self deserialize: response content utf8ToSqueak.
	accessToken := json at: 'access_token' ifAbsent: [nil].
	self token: accessToken.
	^ accessToken