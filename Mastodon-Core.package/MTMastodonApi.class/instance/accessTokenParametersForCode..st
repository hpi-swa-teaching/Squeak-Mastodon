helpers-authentification
accessTokenParametersForCode: anAuthorizationCode

	^ Dictionary newFromPairs: {
		'grant_type'.
		'authorization_code'.
		'code'.
		anAuthorizationCode.
		'client_id'.
		self clientID.
		'client_secret'.
		self clientSecret.
		'redirect_uri'.
		'urn:ietf:wg:oauth:2.0:oob'}