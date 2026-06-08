authentification
exchangeAuthorizationCode: anAuthorizationCode

    | response |
    self hasOAuthCredentials ifFalse: [ ^ nil ].
    response := self requestAccessTokenForCode: anAuthorizationCode.
    response isSuccess ifFalse: [ ^ nil ].
    ^ self storeAccessTokenFromResponse: response