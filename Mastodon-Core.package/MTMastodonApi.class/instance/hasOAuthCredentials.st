helpers-authentification
hasOAuthCredentials

	^ self clientID notNil and: [self clientSecret notNil]