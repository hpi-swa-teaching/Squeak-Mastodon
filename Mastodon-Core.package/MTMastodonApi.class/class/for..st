initialization
for: aCredential

	^ self new
		baseURL: aCredential baseURL;
		token: aCredential token;
		yourself