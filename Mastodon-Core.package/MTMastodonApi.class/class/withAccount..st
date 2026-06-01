initialization
withAccount: anAccount

	^ self new
		baseURL: anAccount baseURL;
		token: anAccount token;
		yourself