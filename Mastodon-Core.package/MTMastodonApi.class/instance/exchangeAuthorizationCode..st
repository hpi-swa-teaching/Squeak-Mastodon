authentification
exchangeAuthorizationCode: anAuthorizationCode

	| response |
	self hasOAuthCredentials ifFalse: [
		self inform: 'Either client ID or client secret not found. Try to log in again.'.
		^ nil].
	response := self requestAccessTokenForCode: anAuthorizationCode.
	response isSuccess ifFalse: [^ nil].
	^ self storeAccessTokenFromResponse: response