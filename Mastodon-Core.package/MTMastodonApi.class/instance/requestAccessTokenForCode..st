helpers-authentification
requestAccessTokenForCode: anAuthorizationCode

	^ webClient
		httpPost: (self urlForPath: '/oauth/token')
		content: (WebUtils encodeUrlEncodedForm: (self accessTokenParametersForCode: anAuthorizationCode))
		type: 'application/x-www-form-urlencoded'