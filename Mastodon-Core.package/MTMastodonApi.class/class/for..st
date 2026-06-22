initialization
for: aCredential

	^ self new
		baseUrl: aCredential baseUrl;
		token: aCredential token;
		yourself