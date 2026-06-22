initialization
for: aBaseUrl token: aToken with: anAccount

	^ self new
		baseUrl: aBaseUrl;
		token: aToken;
		account: anAccount;
		yourself